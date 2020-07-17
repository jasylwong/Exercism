class Microwave
  def initialize(input)
    @input = input
  end

  def timer
    if @input < 10
      "00:0#{@input}"
    elsif @input < 60
      "00:#{@input}"
    elsif @input == 60
      "01:00"
    end
  end
end