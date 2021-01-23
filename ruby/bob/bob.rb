module Bob
  def self.hey(remark)
    remark.upcase == remark ? 'Whoa, chill out!' : 'Whatever.'
  end
end