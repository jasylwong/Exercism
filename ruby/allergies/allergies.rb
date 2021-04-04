class Allergies
  ITEMS = {
    1 => 'eggs', 2 => 'peanuts', 4 => 'shellfish', 8 => 'strawberries', 
    16 => 'tomatoes', 32 => 'chocolate', 64 => 'pollen', 128 => 'cats'
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
    ITEMS.select{ |value, _item| @score & value > 0 }.values
  end
end
