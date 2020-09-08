class Series
  def initialize(number)
    @number = number
  end

  def slices(param)
    # for i in (0..@number.length - param)
    #   p @number[i...i+param]
    # end
    (0..@number.length-param).map{ |i| @number[i...i+param] }
  end
end