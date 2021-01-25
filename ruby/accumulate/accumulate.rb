class Array
  def accumulate(&block)
    # self.each_with_index { |n, i| self[i] = yield(n) }
    self.map { |n| yield(n) }
  end
end