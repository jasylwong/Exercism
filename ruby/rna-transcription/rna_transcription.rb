module Complement
  COMPLEMENTS = { 'G'=> 'C', 'C'=> 'G', 'T'=> 'A', 'A'=> 'U', '' => ''}

  def self.of_dna(dna)
    dna.split('').map{|n| COMPLEMENTS[n]}.join
  end
end