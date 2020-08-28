class Anagram
  def initialize(word)
    @word = word
  end

  def match(anagrams)
    anagrams.select{ |a| letters_equal?(a) && !anagram_of_self?(a) }
  end

  private

  def letters_equal?(word)
    word.downcase.chars.sort == @word.downcase.chars.sort
  end

  def anagram_of_self?(word)
    word.downcase == @word.downcase
  end
end