class Isogram
  def self.isogram?(phrase)
    modified_phrase = phrase.tr('- ', '').downcase

    modified_phrase.chars.uniq.sort == modified_phrase.chars.sort
  end
end