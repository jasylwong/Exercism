export const isPangram = (sentence) => {
  const alphabet = [...'abcdefghijklmnopqrstuvwxyz']
  return alphabet.every(l => sentence.toLowerCase().split('').includes(l))
};
