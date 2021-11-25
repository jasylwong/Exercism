// @ts-check

/**
 * Calculates the sum of the two input arrays.
 *
 * @param {number[]} array1
 * @param {number[]} array2
 * @returns {number} sum of the two arrays
 */
export function twoSum(array1, array2) {
  const sum1 = Number(String(array1).replace(/,/g, ''));
  const sum2 = Number(String(array2).replace(/,/g, ''));

  return sum1 + sum2;
}

/**
 * Checks whether a number is a palindrome.
 *
 * @param {number} value
 * @returns {boolean}  whether the number is a palindrome or not
 */
export function luckyNumber(value) {
  const reversedNumber = String(value).split('').reverse().join('');

  return String(value) === reversedNumber;
}

/**
 * Determines the error message that should be shown to the user
 * for the given input value.
 *
 * @param {string|null|undefined} input
 * @returns {string} error message
 */
export function errorMessage(input) {
  if (!input) {
    return 'Required field';
  } else if (!Number(input)) {
    return 'Must be a number besides 0';
  }
  return '';
}
