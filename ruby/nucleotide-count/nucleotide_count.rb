module Nucleotide
  def self.from_dna(strand)
    raise ArgumentError unless strand.chars.reject { |n| %w(A T C G).include?n }.empty?
    
    strand
  end
end

class String
  def histogram
    Hash[%w(A T C G).map { |n| [n, self.count(n)] }]
  end
end