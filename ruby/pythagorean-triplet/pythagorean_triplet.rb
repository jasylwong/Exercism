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

  def self.where(min_factor: 0, max_factor: 5, sum: nil)
    [*min_factor..max_factor].combination(3).to_a
      .map { |c| Triplet.new(*c) }
      .select { |t| sum ? (t.pythagorean? && t.sum == sum) : t.pythagorean? }
  end
end