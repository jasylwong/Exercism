module Grains
  def self.square(num)
    raise ArgumentError if !num.between?(1, 64)

    2 ** (num - 1)
  end

  def self.total
    [*1..64].map { |s| self.square(s) }.sum
  end
end