class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = matrix.split("\n").map { |r| r.split(" ").map(&:to_i) }
    @columns = @rows.transpose
  end

  def saddle_points
    saddle_points = []
    columns.each_with_index do |_col, i|
      rows.each_with_index do |_row, j|
        if columns[i][j] == columns[i].min && columns[i][j] == rows[j].max
          saddle_points << [j, i]
        end
      end
    end
    saddle_points
  end
end