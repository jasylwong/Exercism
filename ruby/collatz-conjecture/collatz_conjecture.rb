module CollatzConjecture
  def self.steps(n)
    steps = 0
    until n == 1
      n /= 2
      steps += 1
    end
    steps
  end
end