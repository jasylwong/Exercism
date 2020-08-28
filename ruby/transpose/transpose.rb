module Testing
  def transpose(input)
    input.split("\n").map{ |x| [x] }
      .map{ |x| x.first.split("") }
        .transpose.map{ |y| y.join }.join("\n")
  end
end

class Transpose
  extend Testing
end