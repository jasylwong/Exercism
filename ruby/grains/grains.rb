module Grains
  def self.square(location)
    raise ArgumentError if !location.between?(1, 64)

    2 ** (location - 1)
  end

  def self.total
    [*1..64].map { |s| self.square(s) }.sum
  end
end