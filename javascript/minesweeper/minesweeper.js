export const annotate = (input) =>  {
  let output = input.map(r => r.split(''))
  // for (let r in input) {
  for (let [r, rVal] of input.entries()) {
    r = parseInt(r)
    // console.log('r:', r)
  //   console.log('output', output)
  //   const row = rVal.split('')
    // for (let c in input[r].split('')) {
      // c = parseInt(c)
    for (let [c, cVal] of rVal.split('').entries()) {
      // console.log('r:', r, 'c:', c, typeof r, typeof c)
      // console.log('output r c', output[r][c], typeof output[r][c])
      if (input[r][c] === "*") {
        output[r][c] = '*'
      } else {
        if (r > 0 && c > 0 && input[r-1][c-1] === "*") {
          output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
        }
        if (r > 0 && input[r-1][c] === "*") {
          output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
        }
        if (r > 0 && c < input[0].length - 1 && input[r-1][c+1] === "*") {
          output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
        }
        if (c > 0 && input[r][c-1] === "*") {
          output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
        }
        if (c < input[0].length - 1 && input[r][c+1] === "*") {
          output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
        }
        if (r < input.length - 1 && c > 0 && input[r+1][c-1] === "*") {
          output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
        }
        if (r < input.length - 1 && input[r+1][c] === "*") {
          output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
        }
        if (r < input.length - 1 && c < input[0].length - 1 && input[r+1][c+1] === "*") {
          output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
        }
      }
    }
  }
  
  return output.map(r => r.join(''))
}



