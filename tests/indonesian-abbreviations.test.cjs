const { test } = require('node:test');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const source = fs.readFileSync(path.join(__dirname, '../coding-rules.js'), 'utf8');
const rulesPromise = import('data:text/javascript;base64,' + Buffer.from(source).toString('base64'));

test('only encountered abbreviations are supplied, with whole-token and case handling', async () => {
  const { buildIndonesianAbbreviationHints: hints } = await rulesPromise;
  assert.equal(hints('administrasi thorax kemiskinan pasien'), '');
  const out = hints('dm (-), PPOK eksaserbasi; riwayat CKD.');
  assert.match(out, /DM: diabetes melitus/);
  assert.match(out, /PPOK: penyakit paru obstruktif kronik/);
  assert.match(out, /CKD: chronic kidney disease/);
  assert.doesNotMatch(out, /KPD:|SC:|CHF:/);
  assert.equal(hints('DM dm DM').match(/DM: diabetes/g).length, 1);
});

test('ambiguous meanings stay contextual and SC injection does not activate obstetric rules', async () => {
  const { buildPrompt } = await rulesPromise;
  const injection = buildPrompt('Insulin SC; TB 170 cm; DM tipe belum ditentukan.', '');
  assert.match(injection, /SC: AMBIGU: sectio caesarea.*subkutan/);
  assert.match(injection, /TB 170 cm adalah ukuran, bukan diagnosis/);
  assert.doesNotMatch(injection, /## DOKUMENTASI OBSTETRI/);
  const mixed = buildPrompt('Hamil dengan KPD; rencana SC. Insulin SC diberikan.', '');
  assert.match(mixed, /## DOKUMENTASI OBSTETRI/);
  assert.match(mixed, /Tafsirkan setiap kemunculan sesuai kalimat/);
  assert.match(mixed, /jangan samakan semua kemunculan/);
});

test('compact and spaced obstetric notation is a history hint, not a diagnosis', async () => {
  const { buildPrompt, buildIndonesianAbbreviationHints: hints } = await rulesPromise;
  for (const text of ['G2P1A0', 'G2 P1 A0', 'P2 A0']) {
    assert.match(hints(text), /G\/P\/A: gravida\/paritas\/abortus/);
    assert.match(hints(text), /bukan bukti abortus aktif/);
    assert.match(buildPrompt(text, ''), /## DOKUMENTASI OBSTETRI/);
  }
  assert.equal(hints('AG2P1A0B'), '');
});

test('original evidence and uncertainty survive; hints never directly map to ICD codes', async () => {
  const { buildPrompt, buildIndonesianAbbreviationHints: hints } = await rulesPromise;
  const input = 'RPK: DM ibu. DM (-). Suspek ISK dd GEA. Bekas SC; HD dibatalkan. SC a/i KPD masih rencana.';
  const out = buildPrompt(input, 'Bahasa Indonesia');
  assert.ok(out.includes('TEKS KLINIS:\n' + input + '\n\n'));
  assert.match(out, /kutipan persis teks asli, termasuk singkatannya/);
  assert.match(out, /negasi.*suspek\/dd.*riwayat\/bekas.*keluarga.*rencana\/batal/);
  assert.match(out, /a\/i: atas indikasi/);
  assert.doesNotMatch(hints(input), /\b[A-Z]\d{2}(?:\.\d+)?\b/);
  assert.match(hints('ORIF fraktur femur'), /bukan bukti fraktur terbuka/);
});
