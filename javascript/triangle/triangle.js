//
// This is only a SKELETON file for the 'Triangle' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Triangle {
  constructor(s1, s2, s3) {
    this.sides = [s1, s2, s3].sort()
  }

  isEquilateral() {
    return this.sides[0] === this.sides[2] && this.isPosInt()
  }

  isIsosceles() {
    if (this.isViolation() || !this.isPosInt()) { return false }
    return this.sides[0] === this.sides[1] || this.sides[1] === this.sides[2]
  }

  isScalene() {
    if (this.isViolation() || !this.isPosInt()) { return false }
    return this.sides[0] !== this.sides[1] && this.sides[1] !== this.sides[2]
  }

  isViolation() {
    return this.sides[0] + this.sides[1] <= this.sides[2]
  }

  isPosInt() {
    return this.sides[0] > 0
  }
}
