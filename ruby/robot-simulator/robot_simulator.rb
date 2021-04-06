class Robot
  def orient(direction)
    raise ArgumentError if ![:east, :west, :north, :south].include?(direction)

    @direction = direction
  end

  def bearing
    @direction
  end
end
