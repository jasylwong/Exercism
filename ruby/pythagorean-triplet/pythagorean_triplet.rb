class Triplet
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a, @b, @c = a, b, c
  end

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    a**2 + b**2 == c**2
  end

  def self.where(min_factor: 0, max_factor: 5)
    [*min_factor..max_factor].combination(3).to_a
      .map { |a,b,c| Triplet.new(a,b,c) }
      .select { |t| t.pythagorean? }
  end
end