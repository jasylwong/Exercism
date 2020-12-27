class Anagram
  def match(phrases)
    phrases.select{ |a| letters_equal?(a) && !anagram_of_self?(a) }
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