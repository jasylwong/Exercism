class ResistorColorTrio
  BANDS = %w(black brown red orange yellow green blue violet grey white).freeze

  def initialize(bands)
    @bands = bands
  end

  def label
    'Resistor value: '\
    "#{BANDS.find_index(@bands[0])}"\
    "#{BANDS.find_index(@bands[1])}"\
    "#{@bands.last == 'black' ? nil : '0' * BANDS.find_index(@bands.last)}"\
    ' ohms'
  end
end