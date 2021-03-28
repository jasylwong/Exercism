class Isogram
  def self.isogram?(phrase)
    phrase_letters = phrase.downcase.scan(/\w/)

    phrase_letters.uniq == phrase_letters
  end
end