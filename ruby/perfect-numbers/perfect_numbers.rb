module PerfectNumber
  def self.classify(int)
    raise RuntimeError if int < 0

    factors_sum = (1..int-1).select{ |i| int % i == 0 }.reduce(:+)

    if factors_sum < int
      'deficient'
    elsif factors_sum == int
      'perfect'
    else
      'abundant'
    end
  end
end