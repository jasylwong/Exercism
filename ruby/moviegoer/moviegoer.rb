# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  attr_reader :age, :member

  SENIOR_AGE = 60
  ADULT_AGE = 18
  SENIOR_TICKET_PRICE = 10
  STANDARD_TICKET_PRICE = 15

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= SENIOR_AGE ? SENIOR_TICKET_PRICE : STANDARD_TICKET_PRICE
  end

  def watch_scary_movie?
    @age >= ADULT_AGE
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    @member ? "🍿" : (raise NotMovieClubMemberError)
  end
end
