class Anagram
  def match(phrases)
    phrases.select{ |phrase| qualifies?(phrase) }
  end

  private

  def initialize(phrase)
    @phrase = phrase
  end

  def qualifies?(phrase)
    phrase.downcase.chars.sort == @phrase.downcase.chars.sort &&
      phrase.downcase != @phrase.downcase
  end
end