module Brackets
  def self.paired?(string)
    string = string.split('')

    return false if string.count('[') != string.count(']')
    return false if string.count('{') != string.count('}')
    return false if string.count('(') != string.count(')')
    
    (0...string.length).each do |i|
      return false if string[i..-1].count('[') > string[i..-1].count(']')
      return false if string[i..-1].count('{') > string[i..-1].count('}')
      return false if string[i..-1].count('(') > string[i..-1].count(')')
    end
  end
end