class Isogram
  def self.isogram?(input)
    input.chars.uniq.sort == input.chars.sort
  end
end