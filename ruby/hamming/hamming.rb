module Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.length == strand2.length

    strand1.chars.zip(strand2.chars).select { |a, b| a != b }.count
  end
end