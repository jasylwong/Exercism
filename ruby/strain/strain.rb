class Array
  def keep(&block)
    map { |i| i if yield(i) }
  end
end