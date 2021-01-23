class Isogram
  def self.isogram?(input)
    input = input.downcase

    input.chars.uniq.sort == input.chars.sort
  end
end