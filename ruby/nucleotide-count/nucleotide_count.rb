module Nucleotide
  def self.from_dna(strand)
    strand
  end
end

class String
  def histogram
    Hash[%w(A T C G).map { |n| [n, self.count(n)] }]
  end
end