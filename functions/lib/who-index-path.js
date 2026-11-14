// Convert the uploaded WHO 2010 PDF index hierarchy into WHO's textual
// Volume 3 convention. Conversion changes representation only; it never
// changes terms, adds synonyms, or certifies a source candidate.
function cleanLabel(value) {
  return String(value || '').replace(/<[^>]*>/g, '').replace(/&nbsp;/gi, ' ')
    .replace(/\s+/g, ' ').trim();
}

function splitPDFPath(pathText) {
  const lines = String(pathText || '').split(/\r?\n/).map(line => line.trim()).filter(Boolean);
  const segments = [];
  for (const line of lines) {
    const match = line.match(/^(-{1,3})\s*(.*)$/);
    const level = match ? match[1].length : 0;
    let text = cleanLabel(match ? match[2] : line);
    text = text.replace(/\s+[A-Z]\d{2}(?:\.\d{1,3})?[†*]?\s*$/i, '').trim();
    if (text) segments.push({ level, text });
  }
  return segments;
}

export function convertPDFIndexPathToWHO(candidate = {}) {
  let segments = splitPDFPath(candidate.path_text);
  if (!segments.length) {
    const lead = cleanLabel(candidate.lead_term);
    if (lead) segments = [{ level: 0, text: lead }];
    const modifiers = Array.isArray(candidate.modifiers) ? candidate.modifiers : [];
    modifiers.forEach((modifier, index) => {
      const explicit = Number(candidate.modifier_levels?.[index]);
      const fallback = String(modifier || '').match(/^(-{1,3})\s*/)?.[1]?.length;
      const level = Math.min(3, Math.max(1, explicit || fallback || 1));
      const text = cleanLabel(String(modifier || '').replace(/^-{1,3}\s*/, ''));
      if (text) segments.push({ level, text });
    });
  }

  // Require a lead term and monotonically nested modifiers. Gaps or duplicate
  // levels indicate ambiguous source structure and must not be auto-converted.
  const structurallyValid = segments.length > 0 && segments[0].level === 0 &&
    segments.slice(1).every((part, index) =>
      part.level >= 1 && part.level <= 3 &&
      part.level > (index === 0 ? 0 : segments[index].level)
    );
  const formatted = structurallyValid
    ? segments.map((part, index) => index === 0 ? part.text : '-'.repeat(part.level) + ' ' + part.text).join(' ')
    : null;

  return {
    who_index_query: segments[0]?.text || cleanLabel(candidate.lead_term),
    who_formatted_path: formatted,
    who_path_segments: segments,
    conversion_valid: Boolean(structurallyValid)
  };
}

function normalizeIndexSegment(value) {
  return cleanLabel(value).normalize('NFKD').replace(/[\u0300-\u036f]/g, '')
    .toLowerCase().replace(/[^a-z0-9]+/g, ' ').replace(/\s+/g, ' ').trim();
}

export function parseWHOIndexPath(value) {
  let text = cleanLabel(value).replace(/[‐‑‒–—−]/g, '-');
  text = text.replace(/^\s*[A-Z]\d{2}(?:\.\d{1,3})?\s*[-:]?\s*/i, '');
  const pieces = text.split(/\s+(-{1,3})\s+/).map(part => part.trim()).filter(Boolean);
  if (!pieces.length) return [];
  if (pieces.length === 1) return [{ level: 0, text: pieces[0] }];
  const result = [{ level: 0, text: pieces[0] }];
  for (let i = 1; i < pieces.length; i += 2) {
    if (pieces[i + 1]) result.push({ level: pieces[i].length, text: pieces[i + 1] });
  }
  return result;
}

export function matchesWHOIndexPath(candidate, officialTerm) {
  const converted = candidate?.who_path_segments?.length
    ? candidate.who_path_segments
    : convertPDFIndexPathToWHO(candidate).who_path_segments;
  const official = parseWHOIndexPath(officialTerm);
  if (!converted.length || converted.length !== official.length) return false;
  return converted.every((part, index) =>
    Number(part.level) === Number(official[index].level) &&
    normalizeIndexSegment(part.text) === normalizeIndexSegment(official[index].text)
  );
}
