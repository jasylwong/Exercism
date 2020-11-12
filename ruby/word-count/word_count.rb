class Phrase
  def initialize(str)
    @words = str.split(/[,\s]+/)
  end

  def word_count
    print @words
    counts = {}
    @words.each do |word|
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