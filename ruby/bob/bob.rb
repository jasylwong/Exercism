module Bob
  def self.hey(remark)
    if remark.upcase == remark && remark[-1] == '?'
      "Calm down, I know what I'm doing!"
    elsif remark.upcase == remark
      'Whoa, chill out!'
    elsif remark[-1] == '?'
      'Sure.'
    else
      'Whatever.'
    end
  end
end