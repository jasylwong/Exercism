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
end