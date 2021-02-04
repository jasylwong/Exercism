class Darts
  BOARD = {
    inner_circle: { points: 10, distance: 0..1 },
    middle_circle: { points: 5, distance: 1..5 },
    outer_circle: { points: 1, distance: 5..10 },
    outside_target: { points: 0 }
  }

  def score
    case throw
    when BOARD[:inner_circle][:distance]
      BOARD[:inner_circle][:points]
    when BOARD[:middle_circle][:distance]
      BOARD[:middle_circle][:points]
    when BOARD[:outer_circle][:distance]
      BOARD[:outer_circle][:points]
    else
      BOARD[:outside_target][:points]
    end
  end

  private

  attr_reader :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def throw
    Math.sqrt(x * x + y * y)
  end
end
