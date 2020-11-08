class ArmstrongNumbers
  def self.include?(num)
    digits = num.digits
    digits.map { |d| d**digits.length }.reduce(:+) == num
  end
end