class Scrabble
  LETTER_VALUES = {
    "A" => 1, "B" => 3, "C" => 3, "D" => 2, "E" => 1, "F" => 4, "G" => 2,
    "H" => 4, "I" => 1, "J" => 1, "K" => 5, "L" => 1, "M" => 3, "N" => 1,
    "O" => 1, "P" => 3, "Q" => 10, "R" => 1, "S" => 1,"T" => 1,"U" => 1,
    "V" => 4,"W" => 4,"X" => 8,"Y" => 4,"Z" => 10
  }.freeze
  private_constant :LETTER_VALUES

  def initialize(word)
    @word = word
  end

  def score
    self.class.score(@word)
  end

  def self.score(word)
    return 0 if word.to_s[/^[a-zA-Z]+$/].nil?

    word.chars.map { |c| LETTER_VALUES[c.upcase] }.sum
  end
end
