module Acronym
  def self.abbreviate(phrase)
    phrase.split(/\s|-/).map do |word|
      word[0].upcase
    end.join('')
  end
end