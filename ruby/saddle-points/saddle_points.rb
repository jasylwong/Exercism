class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = matrix.split("\n").map { |r| r.split(" ").map(&:to_i) }
    @columns = @rows.transpose
    # print 'Rows: ', @rows
    # print 'columns: ', @columns
  end
end