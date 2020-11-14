class ResistorColorTrio
  BANDS = %w(black brown red orange yellow green blue violet grey white).freeze

  def initialize(bands)
    @bands = bands
  end

  def label
    raise ArgumentError unless (@bands - BANDS).empty?

    value = "#{BANDS.find_index(@bands[0])}"\
            "#{BANDS.find_index(@bands[1])}"\
            "#{@bands.last == 'black' ? nil : '0' * BANDS.find_index(@bands.last)}"

    value_with_unit = value[-3..-1] == "000" ?
                      "#{value[0..-4]} kiloohms" : "#{value} ohms"

    "Resistor value: #{value_with_unit}"
  end
end