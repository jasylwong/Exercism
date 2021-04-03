class Allergies
  ITEMS = {
    128 => 'cats', 64 => 'pollen', 32 => 'chocolate', 16 => 'tomatoes',
    8 => 'strawberries', 4 => 'shellfish', 2 => 'peanuts', 1 => 'eggs'
  }.freeze
  private_constant :ITEMS

  attr_reader :list

  def initialize(score)
    @score = score
    @list = list_allergies
  end

  def allergic_to?(item)
    @list.include?(item)
  end

  private

  def list_allergies
    score_counter = @score.dup

    ITEMS.select do |value, _item|
      score_counter -= value if score_counter >= value
    end.values
  end
end
