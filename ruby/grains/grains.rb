module Grains
  BOARD = 64
  GRAIN_MULTIPLIER = 2

  def self.square(board_location)
    raise ArgumentError unless (1..BOARD).include? board_location

    GRAIN_MULTIPLIER ** (board_location - 1)
  end

  def self.total
    GRAIN_MULTIPLIER ** BOARD - 1
  end
end