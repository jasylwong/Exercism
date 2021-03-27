class Isogram
  def self.isogram?(phrase)
    modified_phrase = phrase.tr('- ', '').downcase.chars

    modified_phrase.uniq == modified_phrase
  end
end