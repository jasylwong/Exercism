class Darts
  def initialize(x, y)
    @distance_from_centre = Math.sqrt(x**2 + y**2)
  end

  def score
    if @distance_from_centre <= 1
      10
    elsif @distance_from_centre <= 5
      5
    elsif @distance_from_centre <= 10
      1
    else
      0
    end
  end
end
