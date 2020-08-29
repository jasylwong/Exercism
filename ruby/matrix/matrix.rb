class Matrix
  def initialize(entries)
    @entries = entries
  end

  def rows
    @rows ||= @entries.each_line.map{ |r| r.split.map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end
