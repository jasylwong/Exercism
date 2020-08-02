export class QueenAttack {
  constructor({ white = [0,3], black = [7, 3] } = {}) {
    if (JSON.stringify(white) === JSON.stringify(black)) {
      throw new Error("Queens cannot share the same space")
    }
    this.white = white
    this.black = black
  }

  toString() {
    throw new Error("Remove this statement and implement this function");
  }

  canAttack() {
    throw new Error("Remove this statement and implement this function");
  }
}
