module Bob
  def self.hey(remark)
    if remark.upcase == remark
      'Whoa, chill out!'
    elsif remark[-1] == '?'
      'Sure.'
    else
      'Whatever.'
    end
  end
end