class Array
  def accumulate(&block)
    map { |n| yield(n) }
  end
end