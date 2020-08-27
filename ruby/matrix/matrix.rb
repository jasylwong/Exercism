class Matrix
  def initialize(entries)
    @entries = entries
  end

  def rows
    @entries.each_line
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

# Every time you see this pattern:

# Initialize an object (like output)
# Iterate and modify this object
# Return this object
# ... you probably have an Enumerable method to do the job.

# And for, although a valid syntax, is not idiomatic in Ruby.

# Can you try a way to rewrite columns using iterators? (Just if you want. Because I think this would be beyond the scope of this exercise).

# And... You could just use Array#transpose at rows to get columns.