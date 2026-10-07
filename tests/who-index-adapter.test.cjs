const fs = require('node:fs');
const vm = require('node:vm');
const assert = require('node:assert/strict');
const source = fs.readFileSync(require('node:path').join(__dirname, '../functions/api/who-index.js'), 'utf8').replace(/^import [^;]+;\n/gm,'').replace('export async function', 'async function');
const context = {AbortSignal, URL, URLSearchParams, Response, Map, btoa, fetch: async (url) => {
  if (String(url).includes('connect/token')) return Response.json({access_token:'test'});
  if (String(url).endsWith('/search?q=Headache&useFlexisearch=true&flatResults=true')) return new Response('not found',{status:404});
  if (String(url).endsWith('/ACSearch')) return new Response('<div class="oneentity fle elink" data-stemid="http://id.who.int/icd/release/10/2010/R51"><span class="titlelabel">Headache</span><li class="pv elink"><em>Headache</em> R51</li></div><div class="oneentity" data-stemid="http://id.who.int/icd/release/10/2010/G44"><span class="titlelabel">Other headache syndromes</span></div>');
  return Response.json({code:'R51',title:{'@value':'Headache'},indexTerm:[]});
}};
vm.createContext(context); vm.runInContext(source,context);
(async()=>{
const response = await context.onRequestGet({request:new Request('https://test/api/who-index?term=Headache&code=R51'),env:{WHO_CLIENT_ID:'test',WHO_CLIENT_SECRET:'test'}});
const result = await response.json();
assert.equal(result.search_http_status,404);
assert.equal(result.browser_http_status,200);
assert.equal(result.results.length,1);
assert.deepEqual(result.results[0].index_terms,['Headache']);
assert.equal(result.results[0].index_source,'WHO_ICD10_BROWSER');
assert.equal(context.extractBrowserIndexResults('<div class="oneentity" data-stemid="http://id.who.int/icd/release/10/2010/R51"><span class="titlelabel">Headache</span></div>').length,0);
console.log('WHO adapter tests passed');
})();

