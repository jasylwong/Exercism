module Grains
  BOARD = 64
  MULTIPLIER = 2

  def self.square(board_location)
    raise BoardLocationError unless (1..BOARD).include? board_location

    MULTIPLIER**(board_location - 1)
  end

  def self.total
    MULTIPLIER**BOARD - 1
  end

  class BoardLocationError < ArgumentError
    def initialize(message = 'Location must exist on the board.')
      super
    end
  end
end

if $PROGRAM_NAME == __FILE__
  puts Grains.square(100)
end
