class Darts
  attr_reader :distance_from_centre

  TARGET = {
    0..1 => 10,
    1..5 => 5,
    5..10 => 1,
    10.. => 0
  }

  def initialize(x, y)
    @distance_from_centre = Math.sqrt(x**2 + y**2)
  end

  def score
    TARGET.find{ |radius, _points| radius.include? distance_from_centre }.last
  end
end
