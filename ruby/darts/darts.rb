class Darts
  attr_reader :distance_from_centre

  def initialize(x, y)
    @distance_from_centre = Math.sqrt(x**2 + y**2)
  end

  def score
    case distance_from_centre
    when 0..1
      10
    when 1..5
      5
    when 5..10
      1
    else
      0
    end
  end
end
