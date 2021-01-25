class Array
  def accumulate(&block)
    # # i = 0
    # # while i < size
    # #   block.call at(i)
    # #   i += 1
    # # end
    # block.call(yield)
    self.each_with_index { |n, i| self[i] = yield(n) }
  end
end