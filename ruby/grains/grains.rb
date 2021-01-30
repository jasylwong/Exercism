module Grains
  BOARD_SQUARES = 1..64

  def self.square(location)
    raise ArgumentError if !BOARD_SQUARES.include? location

    2 ** (location - 1)
  end

  def self.total
    [*BOARD_SQUARES].map { |s| self.square(s) }.sum
  end
end