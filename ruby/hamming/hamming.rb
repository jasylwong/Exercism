module Hamming
  def self.compute(strand1, strand2)
    strand1.split.each_with_index.map { |n, i| n != strand2.split[i] }.count(true)
  end
end