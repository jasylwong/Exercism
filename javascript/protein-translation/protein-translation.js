const translations = {
  AUG: 'Methionine',
  UUU: 'Phenylalanine',
  UUC: 'Phenylalanine',
  UUA: 'Leucine',
  UUG: 'Leucine',
  UCU: 'Serine',
  UCC: 'Serine',
  UCA: 'Serine',
  UCG: 'Serine',
  UAU: 'Tyrosine',
  UAC: 'Tyrosine',
  UGU: 'Cysteine',
  UGC: 'Cysteine',
  UGG: 'Tryptophan',
  UAA: 'STOP',
  UAG: 'STOP',
  UGA: 'STOP'
}

export const translate = (rna) => {
  if (!rna) { return [] }
  const codons = rna.match(/.{1,3}/g)
  const proteins = []
  for (const codon of codons) {
    if (translations[codon] === undefined) { 
      throw new Error('Invalid codon') 
    }
    if (translations[codon] === 'STOP') { break; }
    proteins.push(translations[codon])
  }
  return proteins
};
