module Raindrops
  def self.convert(integer)
    sound = ''
    sound << 'Pling' if integer % 3 == 0
    sound << 'Plang' if integer % 5 == 0
    sound << 'Plong' if integer % 7 == 0
    sound.empty? ? integer.to_s : sound
  end
end

if $PROGRAM_NAME == __FILE__
  puts Raindrops.convert(18r)
end