class Array
  def keep(&block)
    map { |i| yield(i) }
  end
end