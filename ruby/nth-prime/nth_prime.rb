module Prime
  def self.nth(n)
    return 2 if n == 1

    s, t = 2, 1
    while t < n
      s += 1
      t += 1 if [*2..s].any? { |x| (s - 1) % x == 0 }
    end
    s
  end
end