class Matrix
  attr_reader :rows

  def initialize(matrix)
    @rows = matrix.split("\n").map { |r| r.split(" ").map(&:to_i) }
  end
end