//
// This is only a SKELETON file for the 'Triangle' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Triangle {
  constructor(s1, s2, s3) {
    this.sides = [s1, s2, s3]
  }

  isEquilateral() {
    return this.sides.every(side => side === this.sides[0] && side !== 0)
  }

  isIsosceles() {
    const sorted = this.sides.sort((a, b) => a - b)
    return sorted[1] === sorted[2]
  }

  isScalene() {
    throw new Error("Remove this statement and implement this function");
  }
}
