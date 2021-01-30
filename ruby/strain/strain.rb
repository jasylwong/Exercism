class Array
  def keep(&block)
    output = []
    
    each { |i| output << i if yield(i) }
    
    output
  end
end