class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = matrix.split("\n").map { |r| r.split(" ").map(&:to_i) }
    @columns = @rows.transpose
  end

  def saddle_points
    saddle_points = []
    for i in (0..@columns.length-1)
      for j in (0..@rows.length-1)
        if columns[i][j] == columns[i].min && columns[i][j] == rows[j].max
          saddle_points << [j, i]
        end
      end
    end
    saddle_points
  end
end