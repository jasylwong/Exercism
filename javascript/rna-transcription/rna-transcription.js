export const toRna = (dna) => {
  const complements = {
    'G': 'C',
    'C': 'G',
    'T': 'A',
    'A': 'U',
    '': ''
  } 

  return dna.split('').map(n => complements[n]).join('')
};
