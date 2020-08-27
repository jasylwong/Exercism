class Triangle
  def initialize(sides)
    @sides = sides
  end

  # Any suggestions on how I can DRY this by not 
  # writing valid_sides? for each separate method?

  def equilateral?
    valid_sides? && @sides.uniq.length == 1
  end

  def isosceles?
    valid_sides? && @sides.uniq.length <= 2
  end

  def scalene?
    valid_sides? && @sides.uniq.length == 3
  end

  private

  def valid_sides?
     triangle_inequality_holds? && all_sides_greater_than_zero?
  end

  def triangle_inequality_holds?
    @sides.max <= @sides.min(2).reduce(:+)
  end

  def all_sides_positive?
    @sides.all?(&:positive?)
  end
end
