class Palindromes
  def initialize(*range)
    @min = range.first[:min_factor] || 1
    @max = range.first[:max_factor]
  end

  def generate
    [*@min..@max].select { |x| x.to_s == x.to_s.reverse }
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
                .map{ |f| [f, @value / f].sort }.uniq
  end
end
