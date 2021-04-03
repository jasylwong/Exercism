class Allergies
  ITEMS = {
    128 => 'cats', 64 => 'pollen', 32 => 'chocolate', 16 => 'tomatoes',
    8 => 'strawberries', 4 => 'shellfish', 2 => 'peanuts', 1 => 'eggs'
  }.freeze
  private_constant :ITEMS

  def initialize(score)
    @score = score
    @allergies = extract_allergies
  end

  def allergic_to?(item)
    @allergies.include?(item)
  end

  private

  def extract_allergies
    score_dup = @score

    ITEMS.select do |value, _item|
      score_dup -= value if score_dup >= value
    end.values
  end
end
