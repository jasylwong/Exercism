class Matrix
  def initialize(entries)
    @entries = entries
  end

  def rows
    @entries.split("\n")
      .map do |r| 
        r.split.map{ |e| e.to_i }
      end
  end

  def columns
    output = Array.new(rows[0].length){[]}
    for x in 0...rows[0].length
      rows.each do |r|
        output[x].push(r[x])
      end
    end
    output
  end
end