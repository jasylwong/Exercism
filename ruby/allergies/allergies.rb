class Allergies
  ITEMS = {
    128 => 'cats', 64 => 'pollen', 32 => 'chocolate', 16 => 'tomatoes',
    8 => 'strawberries', 4 => 'shellfish', 2 => 'peanuts', 1 => 'eggs'
  }

  def initialize(score)
    @score = score
    @allergies = []
  end

  def allergic_to?(item)
    score_dup = @score.dup
    ITEMS.keys.each do |i|
      if score_dup >= i
        @allergies.push(ITEMS[i])
        score_dup -= i
      end
    end

    @allergies.include?(item)
  end
end
