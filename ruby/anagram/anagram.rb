class Anagram
  def match(candidates)
    candidates.select{ |candidate| qualifies?(candidate) }
  end

  private

  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def qualifies?(candidate)
    same_letters?(candidate) && different_word?(candidate)
  end
  
  def same_letters?(candidate)
    candidate.downcase.chars.sort == phrase.downcase.chars.sort
  end
  
  def different_word?(candidate)
    candidate.downcase != phrase.downcase
  end
end
