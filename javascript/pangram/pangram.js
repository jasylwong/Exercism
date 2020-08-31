export const isPangram = (sentence) => {
  const alphabet = [...'abcdefghijklmnopqrstuvwxyz']
  const lower_case_sentence = sentence.toLowerCase()
  
  return alphabet.every(l => lower_case_sentence.includes(l))
};
