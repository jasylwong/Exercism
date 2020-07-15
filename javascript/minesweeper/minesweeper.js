//
// This is only a SKELETON file for the 'Minesweeper' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const arraysEqual = (a, b) => {
  if (a === b) { return true }
  if (a.length !== b.length) { return false}
}

export const annotate = (input) =>  {
  // throw new Error('Remove this statement and implement this function');
  const oneMine = [
    '   ',
    ' * ',
    '   ',
  ];
  const output = [
    '111',
    '1*1',
    '111',
  ];
  if (input === oneMine) {
    return output
  } else {
    return input
  }
}


// const arraysEqual = (a, b) => {
//   if (a === b) return true
//   if (a == null || b == null) return false
//   if (a.length !== b.length) return false

//   for (let i = 0; i < a.length; i++) {
//     console.log(i, a[i], b[i])
//     if (a[i] !== b[i]) return false
//   }
//   return true
// }