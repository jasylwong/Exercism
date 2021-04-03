class Allergies
  ITEMS = { 1 => 'eggs' }

  def initialize(score)
    @score = score
    @allergies = []
  end

  def allergic_to?(item)
    ITEMS.keys.each do |i|
      @allergies.push(ITEMS[i]) if @score >= i
    end

    @allergies.include?(item)
  end
end
