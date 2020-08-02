class Squares
  def initialize(n)
    @n = n
  end

  def square_of_sum
    (1..@n).reduce(:+) ** 2
  end
end