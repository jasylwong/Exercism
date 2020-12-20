class Proverb
  def initialize(*words)
    @words = words
  end

  def to_s
    (0..@words.length-2).map do |i|
      "For want of a #{@words[i]} the #{@words[i+1]} was lost."
    end.join("\n") + "\nAnd all for the want of a #{@words[0]}."
  end
end