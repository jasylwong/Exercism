export const convert = (arr, a, b) => {
  if (a <= 1 || a === undefined || a % 1 !== 0) { throw new Error('Wrong input base') }
  if (b <= 1 || b === undefined || b % 1 !== 0) { throw new Error('Wrong output base') }
  
  isWrongInputFormat(arr, a)

  const n = arr.length
  const total = arr.map((x,i) => arr[i] * a**(n-i-1)).reduce((a,b) => a + b, 0)
  if (total === 1 || total === 0) { return arr }
  
  let max_index = 0

  while (total > b**max_index) {
    max_index ++
  }
  
  max_index --
  
  let result = []
  let remainder = total
  for (let i = 0; i <= max_index; i++) {
    result.push(Math.floor(remainder / b**(max_index-i)))
    remainder = remainder % b**(max_index-i)
  }
   
  return result
};

const isWrongInputFormat = (arr, base) => {
  if (isEmpty(arr) || leadingZero(arr) || invalidDigits(arr, base)) {
    { throw new Error('Input has wrong format') }
  }
}

const isEmpty = (arr) => {
  (arr.length === 0)
}

const leadingZero = (arr) => {
  (arr[0] === 0 && arr.length > 1)
}

const invalidDigits = (arr, base) => {
  (arr.some(el => el < 0 || el >= base))
}