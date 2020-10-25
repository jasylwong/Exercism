class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(n)
    raise ArgumentError unless n <= digits.length

    digits.split('').each_cons(n).map(&:join)
  end

  private

  attr_reader :digits
end