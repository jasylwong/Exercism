class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(n)
    raise ArgumentError if n > digits.length

    (0..digits.length - n).map{ |i| digits[i...i+n] }
  end

  private

  attr_reader :digits
end