class Anagram
  def match(phrases)
    phrases.select{ |phrase| letters_equal?(phrase) && !anagram_of_self?(phrase) }
  end

  private

  def initialize(phrase)
    @phrase = phrase
  end

  def letters_equal?(phrase)
    phrase.downcase.chars.sort == @phrase.downcase.chars.sort
  end

  def anagram_of_self?(phrase)
    phrase.downcase == @phrase.downcase
  end
end