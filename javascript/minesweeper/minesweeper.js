export const annotate = (input) =>  {
  let output = input.map(r => r.split(''))
  for (let [r, rVal] of input.entries()) {
    for (let [c, cVal] of rVal.split('').entries()) {
      if (input[r][c] === "*") {
        output[r][c] = '*'
      } else {
        if (r > 0) {
          if (c > 0 && input[r-1][c-1] === "*") {
            output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
          }
          if (input[r-1][c] === "*") {
            output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
          }
          if (c < input[0].length - 1 && input[r-1][c+1] === "*") {
            output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
          }
        }
        if (c > 0 && input[r][c-1] === "*") {
          output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
        }
        if (c < input[0].length - 1 && input[r][c+1] === "*") {
          output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
        }
        if (r < input.length - 1) {
          if (c > 0 && input[r+1][c-1] === "*") {
            output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
          }
          if (input[r+1][c] === "*") {
            output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
          }
          if (c < input[0].length - 1 && input[r+1][c+1] === "*") {
            output[r][c] = (output[r][c] === ' ' ? 1 : output[r][c] + 1)
          }
        }
      }
    }
  }
  
  return output.map(r => r.join(''))
}



