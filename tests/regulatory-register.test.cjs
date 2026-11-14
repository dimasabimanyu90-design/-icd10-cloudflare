const test = require('node:test');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');

const root = path.join(__dirname, '..');
const register = JSON.parse(fs.readFileSync(path.join(root, 'data/regulatory-register.json'), 'utf8'));
const prompt = fs.readFileSync(path.join(root, 'coding-rules.js'), 'utf8');

test('regulatory register has a verification date and official authorities', () => {
  assert.match(register.checked_on, /^\d{4}-\d{2}-\d{2}$/);
  assert.ok(register.authoritative_sources.some(url => url.includes('jdih.kemkes.go.id')));
  assert.ok(register.authoritative_sources.some(url => url.includes('peraturan.bpk.go.id')));
});

test('active register contains only in-force entries with official source and scope', () => {
  assert.ok(register.regulations.length > 0);
  for (const regulation of register.regulations) {
    assert.equal(regulation.status, 'in_force', regulation.id);
    assert.match(regulation.official_source, /^https:\/\//, regulation.id);
    assert.ok(Array.isArray(regulation.relevance) && regulation.relevance.length, regulation.id);
    assert.ok(regulation.status_checked_on, regulation.id);
  }
});

test('superseded instruments cannot also appear in the active register', () => {
  const activeIds = new Set(register.regulations.map(item => item.id));
  for (const old of register.excluded_superseded) {
    assert.equal(old.status, 'repealed', old.id);
    assert.ok(old.replaced_by, old.id);
    assert.ok(!activeIds.has(old.id), old.id);
  }
});

test('coding prompt requires current regulations and respects scope', () => {
  assert.match(prompt, /hanya regulasi Indonesia yang tercatat berstatus BERLAKU/i);
  assert.match(prompt, /ruang lingkupnya/i);
  assert.match(prompt, /WHO ICD-10 2010 tetap menjadi sumber klasifikasi/i);
  assert.match(prompt, /Jangan menyamakan INA-CBG dengan iDRG/i);
});
