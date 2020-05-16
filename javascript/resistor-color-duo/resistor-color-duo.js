//
// This is only a SKELETON file for the 'Resistor Color Duo' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const decodedValue = (arr) => {
  const colors = "black brown red orange yellow green blue violet grey white".split(" ")
  return Number(`${colors.indexOf(arr[0])}${colors.indexOf(arr[1])}`)
};
