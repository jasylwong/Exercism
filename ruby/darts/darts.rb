class Darts
  def initialize(x, y)
    @z = Math.sqrt(x**2 + y**2)
  end

  def score
    if @z <= 1
      10
    elsif @z <= 5
      5
    elsif @z <= 10
      1
    else
      0
    end
  end
end
