(() => {
  'use strict';
  const KEY = 'icd10-coding-history-v1';
  const LIMIT = 30;
  let entries = [];
  let available = true;
  const panel = document.createElement('section');
  panel.style.cssText = 'max-width:1100px;margin:24px auto;padding:20px;background:white;border:1px solid #dce4ed;border-radius:10px;color:#182c43';
  panel.innerHTML = '<h2>Histori analisis coding</h2><p>Kasus dan hasil tersimpan hanya pada browser ini, maksimal 30 kasus. Tidak tersinkron ke perangkat lain. Gunakan teks tanpa identitas pasien; ekspor sebelum membersihkan data browser.</p><label style="display:block;margin:12px 0"><input type="checkbox" id="codingHistoryEnabled"> Simpan kasus dan hasil analisis berikutnya di browser ini</label><label>Cari kasus atau kode <input id="codingHistorySearch" type="search" maxlength="150" style="padding:8px;max-width:100%"></label> <button type="button" id="codingHistoryExport">Ekspor histori JSON</button><p id="codingHistoryStatus" role="status" style="margin:12px 0"></p><div id="codingHistoryList"></div>';
  document.body.insertBefore(panel, document.currentScript);
  const status = panel.querySelector('#codingHistoryStatus');
  const enabled = panel.querySelector('#codingHistoryEnabled');
  const search = panel.querySelector('#codingHistorySearch');
  const list = panel.querySelector('#codingHistoryList');
  try {
    const stored = JSON.parse(localStorage.getItem(KEY) || '[]');
    if (!Array.isArray(stored) || stored.some(e => !e || typeof e.id !== 'string' || typeof e.input !== 'string' || typeof e.timestamp !== 'string' || !e.result || !Array.isArray(e.result.diagnoses) || !Array.isArray(e.result.procedures) || !Array.isArray(e.result.validations))) throw new Error('Invalid history');
    entries = stored;
  } catch {available = false; enabled.disabled = true; status.textContent = 'Histori tidak dapat dibaca atau penyimpanan diblokir. Data lama tidak ditimpa.';}
  function persist(next) {
    if (!available) return false;
    try {localStorage.setItem(KEY, JSON.stringify(next)); entries = next; render(); return true;}
    catch {status.textContent = 'Histori gagal disimpan. Kapasitas penuh atau penyimpanan diblokir; ekspor data yang masih tersedia.'; return false;}
  }
  function codes(entry) {return [...entry.result.diagnoses,...entry.result.procedures].map(d => String(d.code || '')).join(', ');}
  function action(text, callback) {
    const b = document.createElement('button'); b.type = 'button'; b.textContent = text; b.style.cssText = 'margin:8px 8px 0 0;padding:6px 10px;cursor:pointer'; b.onclick = callback; return b;
  }
  function render() {
    list.replaceChildren();
    const term = search.value.trim().toLocaleLowerCase();
    const matches = entries.filter(e => (e.input + ' ' + codes(e)).toLocaleLowerCase().includes(term));
    const count = document.createElement('p'); count.textContent = `${matches.length} ditampilkan dari ${entries.length} kasus tersimpan`; list.append(count);
    for (const entry of matches) {
      const card = document.createElement('article'); card.style.cssText = 'padding:14px 0;border-top:1px solid #dce4ed';
      const title = document.createElement('h3'); title.style.fontSize = '14px'; title.textContent = `${new Date(entry.timestamp).toLocaleString('id-ID')} · ${codes(entry) || 'Tanpa kode'}`;
      const preview = document.createElement('p'); preview.textContent = entry.input.slice(0,160) + (entry.input.length > 160 ? '…' : '');
      const model = document.createElement('small'); model.textContent = `Model: ${entry.model || 'Tidak tercatat'}. Hasil tersimpan; bukan analisis ulang atau pengesahan kode.`;
      card.append(title,preview,model,document.createElement('br'));
      card.append(action('Buka kembali', () => {
        if (typeof analysisInProgress !== 'undefined' && analysisInProgress) {status.textContent = 'Tunggu analisis yang sedang berjalan selesai.'; return;}
        const input = document.getElementById('clinicalInput');
        if (input.value.trim() && input.value.trim() !== entry.input && !window.confirm('Ganti teks kasus yang sedang terbuka dengan kasus histori?')) return;
        try {
          input.value = entry.input; input.dispatchEvent(new Event('input', {bubbles:true}));
          renderResults(JSON.parse(JSON.stringify(entry.result)));
          updateModelLabel(entry.model || 'Tidak tercatat');
          status.textContent = `Membuka hasil histori ${new Date(entry.timestamp).toLocaleString('id-ID')}; hasil belum dianalisis ulang.`;
          input.scrollIntoView({behavior:'smooth',block:'center'});
        } catch {status.textContent = 'Hasil histori tidak dapat ditampilkan.';}
      }));
      const management = document.createElement('details');
      management.style.marginTop = '10px';
      const toggle = document.createElement('summary'); toggle.textContent = 'Kelola data kasus'; toggle.style.cursor = 'pointer';
      management.append(toggle, action('Hapus kasus', () => {
        if (window.confirm('Hapus kasus dan hasil ini dari histori browser?') && persist(entries.filter(e => e.id !== entry.id))) status.textContent = 'Kasus dihapus dari histori.';
      })); card.append(management); list.append(card);
    }
  }
  search.addEventListener('input', render);
  window.addEventListener('coding-analysis-complete', event => {
    if (!enabled.checked || !available) return;
    if (entries.length >= LIMIT) {status.textContent = 'Histori penuh (30 kasus). Ekspor lalu hapus kasus yang tidak diperlukan; analisis terbaru belum tersimpan.'; return;}
    const {input,result,model} = event.detail;
    const entry = {id:crypto.randomUUID(),timestamp:new Date().toISOString(),input,result,model};
    if (persist([entry,...entries])) status.textContent = 'Kasus dan hasil analisis tersimpan di histori browser ini.';
  });
  panel.querySelector('#codingHistoryExport').onclick = () => {
    if (!entries.length) {status.textContent = 'Belum ada histori untuk diekspor.'; return;}
    const url = URL.createObjectURL(new Blob([JSON.stringify({format:'icd10-coding-history-v1',exportedAt:new Date().toISOString(),entries},null,2)], {type:'application/json'}));
    const a = document.createElement('a'); a.href = url; a.download = 'histori-coding.json'; document.body.append(a); a.click(); a.remove(); setTimeout(() => URL.revokeObjectURL(url),1000);
  };
  render();
})();
