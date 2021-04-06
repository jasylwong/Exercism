class Robot
  DIRECTIONS = { north: 0, east: 1, south: 2, west: 3 }.freeze

  def orient(direction)
    raise ArgumentError if !DIRECTIONS.keys.include?(direction)

    @direction_index = DIRECTIONS[direction]
  end

  def bearing
    DIRECTIONS.invert[@direction_index]
  end

  def turn_right
    @direction_index = (@direction_index + 1) % 4 
  end

  def turn_left
    @direction_index = (@direction_index + 3) % 4 
  end
end
