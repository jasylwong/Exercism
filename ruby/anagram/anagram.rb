class Anagram
  def match(candidates)
    candidates.select{ |candidate| qualifies?(candidate) }
  end

  private

  attr_reader :letters

  def initialize(phrase)
    @letters = normalized(phrase)
  end

  def normalized(phrase)
    phrase.downcase.chars
  end

  def qualifies?(candidate)
    same_letters?(candidate) && different_word?(candidate)
  end
  
  def same_letters?(candidate)
    normalized(candidate).sort == letters.sort
  end
  
  def different_word?(candidate)
    normalized(candidate) != letters
  end
end
