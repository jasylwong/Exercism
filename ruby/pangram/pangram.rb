module Pangram
  ALL_LETTERS = 'abcdefghijklmnopqrstuvwxyz'
  def self.pangram?(sentence)
    ([*'a'..'z'] - sentence.downcase.chars).empty?
  end
end