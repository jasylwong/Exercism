module Acronym
  def self.abbreviate(phrase)
    phrase.split(/[\s-]+/).map(&:chr).join.upcase
  end
end