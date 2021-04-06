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

  def at(x, y)
    @coordinates = [x, y]
  end

  def coordinates
    @coordinates
  end

  def advance
    if @direction_index % 2 == 0
      @coordinates[1] += bearing == :north ? 1 : -1
    else
      @coordinates[0] += bearing == :east ? 1 : -1
    end
  end
end
