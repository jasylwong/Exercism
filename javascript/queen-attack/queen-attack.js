export class QueenAttack {
  constructor({ white = [0,3], black = [7, 3] } = {}) {
    if (JSON.stringify(white) === JSON.stringify(black)) {
      throw new Error("Queens cannot share the same space")
    }
    this.white = white
    this.black = black
  }

  toString() {
    let board = ['_ _ _ _ _ _ _ _',
      '_ _ _ _ _ _ _ _',
      '_ _ _ _ _ _ _ _',
      '_ _ _ _ _ _ _ _',
      '_ _ _ _ _ _ _ _',
      '_ _ _ _ _ _ _ _',
      '_ _ _ _ _ _ _ _',
      '_ _ _ _ _ _ _ _\n']

    board[this.white[0]] = '_ _ _ _ _ _ _ _'.substring(0, this.white[1] * 2) + 'W' + '_ _ _ _ _ _ _ _'.substring(this.white[1] * 2 + 1)
    board[this.black[0]] = '_ _ _ _ _ _ _ _'.substring(0, this.black[1] * 2) + 'B' + '_ _ _ _ _ _ _ _'.substring(this.black[1] * 2 + 1)
    return board.join('\n');
  }

  canAttack() {
    throw new Error("Remove this statement and implement this function");
  }
}
