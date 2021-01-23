class Isogram
  def self.isogram?(input)
    input.chars.uniq.empty?
  end
end