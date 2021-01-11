module Brackets
  def self.paired?(string)
    string = string.split('')

    pairs = {'{' => '}', '[' => ']', '(' => ')'}

    pairs.each do |lhs, rhs|
      return false if string.count(lhs) != string.count(rhs)
      
      (0...string.length).each do |i|
        return false if string[i..-1].count(lhs) > string[i..-1].count(rhs)
      end
    end
  end
end