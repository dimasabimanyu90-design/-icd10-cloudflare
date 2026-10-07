const fs = require('node:fs');
const path = require('node:path');
const vm = require('node:vm');
module.exports = function loadCoding(context, root) {
  const rules = fs.readFileSync(path.join(root, 'coding-rules.js'), 'utf8').replace(/^export \{[^}]+\};?$/gm, '');
  vm.runInContext(rules, context);
  const pdfLib = path.join(root, 'functions/lib/who2010-pdf.js');
  if(fs.existsSync(pdfLib)) vm.runInContext(fs.readFileSync(pdfLib,'utf8').replace(/export /g,''),context);
  const endpoint = fs.readFileSync(path.join(root, 'functions/api/claude.js'), 'utf8').replace(/^import [^;]+;\n/gm, '').replace(/export /g, '');
  vm.runInContext(endpoint, context);
};

