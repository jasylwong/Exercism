module ResistorColorDuo
  BANDS = %w(black brown red orange yellow green blue violet grey white)

  def self.value(bands)
    "#{BANDS.find_index(bands[0])}#{BANDS.find_index(bands[1])}".to_i
  end
end
