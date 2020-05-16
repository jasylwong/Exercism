//
// This is only a SKELETON file for the 'Collatz Conjecture' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const steps = (n) => {
  if (n <= 0) { throw new Error('Only positive numbers are allowed') }
  let step_count = 0
  while (n !== 1) {
    n = (n % 2 === 0) ? (n/2) : (3 * n + 1)
    step_count ++
  }
  return step_count
};
