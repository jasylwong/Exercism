class Matrix
  def initialize(entries)
    @entries = entries
  end

  def rows
    @entries.split("\n")
      .map do |r| 
        r.split(" ").map{ |e| e.to_i }
      end
  end
end