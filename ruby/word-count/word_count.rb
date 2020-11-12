class Phrase
  def initialize(str)
    @str = str
  end

  def word_count
    @str.downcase.scan(/[a-z0-9')]+/).group_by{ |word| word }
      .transform_values(&:count)
  end
end