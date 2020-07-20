module Pangram
  ALL_LETTERS = 'abcdefghijklmnopqrstuvwxyz'
  def self.pangram?(sentence)
    sentence.gsub(/[^a-z]/i, '').downcase.split('').uniq.sort.join == ALL_LETTERS
  end
end