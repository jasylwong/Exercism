EARTH_YEARS = {
  mercury: 0.2408467,
  venus: 0.61519726,
  earth: 1,
  mars: 1.8808158,
  jupiter: 11.862615,
  saturn: 29.447498,
  uranus: 84.016846,
  neptune: 164.79132,
}

SECONDS_IN_A_YEAR = 60 * 60 * 24 * 365.25

class SpaceAge
  def initialize(seconds)
    @years = seconds / SECONDS_IN_A_YEAR
  end

  def on_earth
    return @years / EARTH_YEARS[:earth]
  end

  def on_mercury
    return @years / EARTH_YEARS[:mercury]
  end

  def on_venus
    return @years / EARTH_YEARS[:venus]
  end

  def on_mars
    return @years / EARTH_YEARS[:mars]
  end

  def on_jupiter
    return @years / EARTH_YEARS[:jupiter]
  end

  def on_saturn
    return @years / EARTH_YEARS[:saturn]
  end

  def on_uranus
    return @years / EARTH_YEARS[:uranus]
  end

  def on_neptune
    return @years / EARTH_YEARS[:neptune]
  end
end