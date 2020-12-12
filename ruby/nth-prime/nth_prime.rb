module Prime
  def self.nth(n)
    return 2 if n == 1

    s, t = 2, 1
    while t < n
      s += 1
      t += 1 unless [*2..s-1].any? { |x| s % x == 0 }
    end
    s
  end
end