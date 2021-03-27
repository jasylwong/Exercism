class Isogram
  def self.isogram?(phrase)
    modified_phrase = phrase.downcase.scan(/\w/)

    modified_phrase.uniq == modified_phrase
  end
end