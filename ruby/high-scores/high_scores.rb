class HighScores
  attr_reader :scores, :latest, :personal_best, :personal_top_three

  def initialize(scores)
    @scores = scores
    @latest = scores[-1]
    @personal_best = scores.max
    @personal_top_three = scores.sort.last(3).reverse
  end

  def latest_is_personal_best?
  end
end
