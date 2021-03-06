module Nucleotide
  def self.from_dna(strand)
    raise ArgumentError unless strand.count("^ATCG").zero?
    
    strand
  end
end

class String
  def histogram
    Hash[%w(A T C G).map { |n| [n, count(n)] }]
  end
end