class Phrase
  def initialize(str)
    @str = str
  end

  def word_count
    str.downcase.scan(/[a-z')]+/).group_by{ |word| word }
      .transform_values(&:count)
  end
end