class Isogram
  def self.isogram?(phrase)
    modified_phrase = phrase.tr('- ', '').downcase.chars

    modified_phrase.uniq.sort == modified_phrase.sort
  end
end