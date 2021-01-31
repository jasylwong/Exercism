module Grains
  BOARD_SQUARES = 64
  GRAIN_MULTIPLIER = 2

  def self.square(board_location)
    raise ArgumentError unless (1..BOARD_SQUARES).include? board_location

    GRAIN_MULTIPLIER ** (board_location - 1)
  end

  def self.total
    GRAIN_MULTIPLIER ** BOARD_SQUARES - 1
  end
end