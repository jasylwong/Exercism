module Grains
  MAX_SQUARES = 64
  MULTIPLIER = 2

  def self.square(location)
    raise BoardLocationError unless (1..MAX_SQUARES).include? location

    MULTIPLIER**(location - 1)
  end

  def self.total
    MULTIPLIER**MAX_SQUARES - 1
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
