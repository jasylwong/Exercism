class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(n)
    (0..@digits.length - n).map{ |i| @digits[i...i+n] }
  end
end