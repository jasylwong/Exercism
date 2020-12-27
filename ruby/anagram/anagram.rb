class Anagram
  attr_reader :phrase

  def match(candidates)
    candidates.select{ |candidate| qualifies?(candidate) }
  end

  private

  def initialize(phrase)
    @phrase = phrase
  end

  def qualifies?(candidate)
    candidate.downcase.chars.sort == phrase.downcase.chars.sort &&
      candidate.downcase != phrase.downcase
  end
end
