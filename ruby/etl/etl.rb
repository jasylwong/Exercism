module ETL
  def self.transform(letters)
    letters.values.flatten.to_h { |s| [s.downcase, s.ord - 64] }
  end
end