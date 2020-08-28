class Matrix
  def initialize(entries)
    @entries = entries
  end

  def rows
    @rows ||= begin
      @entries.each_line
        .map do |r| 
          r.split.map{ |e| e.to_i }
        end
      end
  end

  def columns
    rows.transpose
  end
end
