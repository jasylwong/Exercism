module Raindrops
  def self.convert(n)
    sound = ''
    sound += 'Pling' if n % 3 == 0
    sound += 'Plang' if n % 5 == 0
    sound.empty? ? n.to_s : sound
  end
end