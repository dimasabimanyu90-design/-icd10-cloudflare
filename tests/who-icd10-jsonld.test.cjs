const assert = require('node:assert/strict');
const fs = require('node:fs');
const vm = require('node:vm');
const path = require('node:path');

const source = fs.readFileSync(path.join(__dirname, '../functions/api/who-icd10.js'), 'utf8')
  .replace(/^export /gm, '');
let whoEntity;
let requestedUrl;
const context = {
  Request, Response, URL, URLSearchParams, AbortSignal, btoa,
  fetch: async (url) => {
    if (String(url).includes('connect/token')) {
      return Response.json({ access_token: 'test-token' });
    }
    requestedUrl = String(url);
    return Response.json(whoEntity);
  }
};
vm.createContext(context);
vm.runInContext(source, context);

async function validate(code) {
  return context.onRequestPost({
    request: new Request('https://app.test/api/who-icd10', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ code })
    }),
    env: { WHO_CLIENT_ID: 'test-client', WHO_CLIENT_SECRET: 'test-secret' }
  });
}

(async () => {
  whoEntity = {
    '@id': 'http://id.who.int/icd/release/10/2010/A91',
    title: { '@language': 'en', '@value': 'Dengue haemorrhagic fever' }
  };
  let response = await validate('A91');
  let result = await response.json();
  assert.equal(response.status, 200);
  assert.equal(result.valid, true);
  assert.equal(result.code, 'A91');
  assert.equal(result.entity.title, 'Dengue haemorrhagic fever');
  assert.ok(requestedUrl.endsWith('/A91'));

  whoEntity = {
    code: 'D69.6',
    prefLabel: [{ '@language': 'en', '@value': 'Thrombocytopenia, unspecified' }]
  };
  response = await validate('D69.6');
  result = await response.json();
  assert.equal(result.valid, true);
  assert.equal(result.entity.code, 'D69.6');
  assert.equal(result.entity.title, 'Thrombocytopenia, unspecified');

  whoEntity = {
    '@id': 'http://id.who.int/icd/release/10/2010/J18.0',
    title: { '@value': 'Wrong code' }
  };
  response = await validate('J18.9');
  result = await response.json();
  assert.equal(response.status, 502);
  assert.equal(result.valid, false);
  assert.equal(result.identity_code, 'J18.0');

  whoEntity = { title: { '@value': 'No identity field' } };
  response = await validate('A91');
  result = await response.json();
  assert.equal(response.status, 502);
  assert.equal(result.valid, false);
  assert.equal(result.identity_code, null);

  const missingCredentials = await context.onRequestPost({
    request: new Request('https://app.test/api/who-icd10', {
      method: 'POST', body: JSON.stringify({ code: 'A91' })
    }),
    env: {}
  });
  assert.equal(missingCredentials.status, 500);
  console.log('WHO ICD-10 JSON-LD tests passed: A91, D69.6, mismatched identity, missing identity, and missing credentials');
})().catch(error => {
  console.error(error);
  process.exitCode = 1;
});
