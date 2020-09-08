class Series
  def initialize(number)
    @number = number
  end

  def slices(param)
    return @number.split("") if param == 1
  end
end