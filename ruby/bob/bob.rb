module Bob
  def self.hey(remark)
    if remark.upcase == remark && remark[-1] == '?' && remark.count("a-zA-Z") > 0
      "Calm down, I know what I'm doing!"
    elsif remark.upcase == remark && remark.count("a-zA-Z") > 0
      'Whoa, chill out!'
    elsif remark[-1] == '?'
      'Sure.'
    elsif remark.strip.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end