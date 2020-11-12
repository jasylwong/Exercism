class Phrase
  def initialize(words)
    @words = words
  end

  def word_count
    counts = {}
    @words.split.each do |word|
      counts[word] = counts.keys.include?(word) ? counts[word] + 1 : 1
      # if counts.keys.include?(word)
      #   counts[word] += 1
      # else
      #   counts[word] = 1
      # end
    end
    counts
  end
end