module Bob
  def self.hey(remark)
    remark = remark.strip

    if remark.upcase == remark && remark.count("a-zA-Z") > 0
      remark[-1] == '?' ? "Calm down, I know what I'm doing!" : 'Whoa, chill out!'
    elsif remark[-1] == '?'
      'Sure.'
    elsif remark.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end