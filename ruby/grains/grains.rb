module Grains
  LOCATIONS = 64
  MULTIPLIER = 2

  def self.square(location)
    raise BoardLocationError unless (1..LOCATIONS).include? location

    MULTIPLIER**(location - 1)
  end

  def self.total
    MULTIPLIER**LOCATIONS - 1
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
