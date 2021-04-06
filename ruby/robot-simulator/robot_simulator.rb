class Robot
  DIRECTIONS = { north: 1, east: 2, south: 3, west: 4 }.freeze

  def orient(direction)
    raise ArgumentError if !DIRECTIONS.keys.include?(direction)

    @direction_index = DIRECTIONS[direction]
  end

  def bearing
    DIRECTIONS.invert[@direction_index]
  end

  def turn_right
    @direction_index = @direction_index % 4 + 1
  end

  def turn_left
    @direction_index = @direction_index % 4 + 3
  end
end
