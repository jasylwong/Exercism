class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(num)
    (1...num).select do |n|
      @factors.any? { |f| n % f == 0 }
    end.reduce(:+) || 0
  end
end