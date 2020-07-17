class Microwave
  def initialize(input)
    @minutes, @seconds = input.divmod(input < 100 ? 60 : 100)
  end

  def timer
    "%02d:%02d" % [@minutes, @seconds]
  end
end