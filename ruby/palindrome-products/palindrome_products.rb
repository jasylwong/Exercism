class Palindromes
  def initialize(range)
    @min = 1 || range[:min_factor]
    @max = range[:max_factor]
  end

  def generate
    [*@min..@max].map{ |x| [*@min..@max].map{ |y| x * y } }.flatten
           .select { |x| x.to_s == x.to_s.reverse }
  end

  def largest
    @value = generate.max
    self
  end

  def value
    @value
  end

  def factors
    (@min..@max).select{ |f| @value % f == 0 }
                .map{ |f| [f, @value / f].sort if (@value / f).between?(@min, @max) }
                .compact.uniq
  end
end
