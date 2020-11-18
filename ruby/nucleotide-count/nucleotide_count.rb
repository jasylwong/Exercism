module Nucleotide
  def self.from_dna(strand)
    strand
  end
end

class String
  def histogram
    { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
  end
end