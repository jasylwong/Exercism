class Isogram
  def self.isogram?(input)
    input = input.tr('-', '').downcase

    input.chars.uniq.sort == input.chars.sort
  end
end