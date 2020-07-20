module Acronym
  def self.abbreviate(phrase)
    phrase.split(' - ').join(' ').split(/\s|-/).map do |word|
      word[0].upcase
    end.join('')
  end
end