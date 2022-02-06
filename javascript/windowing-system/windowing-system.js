// @ts-check

/**
 * Implement the classes etc. that are needed to solve the
 * exercise in this file. Do not forget to export the entities
 * you defined so they are available for the tests.
 */

export function Size(width = 80, height = 60) {
  this.width = width;
  this.height = height;
}

Size.prototype.resize = function(newWidth = this.width, newHeight = this.height) {
  this.width = newWidth;
  this.height = newHeight;
}


export function Position(x = 0, y = 0) {
  this.x = x;
  this.y = y;
}

Position.prototype.move = function(newX = this.x, newY = this.y) {
  this.x = newX;
  this.y = newY;
}

export class ProgramWindow {
  constructor() {
    this.screenSize = new Size(800, 600);
    this.size = new Size();
    this.position = new Position();
  }

  resize(newSize) {
    // const widthRestrict = Math.min(newSize.width, this.screenSize.width - this.position.x)
    // const heightRestrict = Math.min(newSize.height, this.screenSize.height - this.position.y)

    // const newWidth = Math.max(widthRestrict, 1);
    // const newHeight = Math.max(heightRestrict, 1);

    const newWidth = Math.max(newSize.width, 1);
    const newHeight = Math.max(newSize.height, 1);

    this.size.resize(newWidth, newHeight);
  }

  move(newPosition) {
    const xRestrict = Math.min(newPosition.x, this.screenSize.width - this.size.width)
    const yRestrict = Math.min(newPosition.y, this.screenSize.height - this.size.height)

    const newX = Math.max(xRestrict, 0);
    const newY = Math.max(yRestrict, 0);

    this.position.move(newX, newY);
  }
}