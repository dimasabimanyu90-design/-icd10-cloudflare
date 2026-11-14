const test = require('node:test');
const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');

test('converts extracted PDF path to WHO Volume 3 separators without changing hierarchy', async () => {
  const source = fs.readFileSync(path.join(__dirname, '../functions/lib/who-index-path.js'), 'utf8');
  const mod = await import('data:text/javascript;base64,' + Buffer.from(source).toString('base64'));
  const converted = mod.convertPDFIndexPathToWHO({
    code: 'S72.3',
    lead_term: 'Fracture',
    modifiers: ['femur', 'shaft'],
    modifier_levels: [1, 2],
    path_text: 'Fracture\n- femur\n-- shaft'
  });

  assert.equal(converted.conversion_valid, true);
  assert.equal(converted.who_index_query, 'Fracture');
  assert.equal(converted.who_formatted_path, 'Fracture - femur -- shaft');
  assert.deepEqual(converted.who_path_segments.map(({level}) => level), [0, 1, 2]);
  assert.equal(mod.matchesWHOIndexPath(converted, 'Fracture - femur -- shaft'), true);
});

test('does not verify a changed term, changed hierarchy, or incomplete PDF path', async () => {
  const source = fs.readFileSync(path.join(__dirname, '../functions/lib/who-index-path.js'), 'utf8');
  const mod = await import('data:text/javascript;base64,' + Buffer.from(source).toString('base64'));
  const converted = mod.convertPDFIndexPathToWHO({
    lead_term: 'Fracture',
    modifiers: ['femur', 'shaft'],
    modifier_levels: [1, 2],
    path_text: 'Fracture\n- femur\n-- shaft'
  });

  assert.equal(mod.matchesWHOIndexPath(converted, 'Fracture - femur - shaft'), false);
  assert.equal(mod.matchesWHOIndexPath(converted, 'Fracture - humerus -- shaft'), false);
  const invalid = mod.convertPDFIndexPathToWHO({path_text: '- femur\n-- shaft'});
  assert.equal(invalid.conversion_valid, false);
});
