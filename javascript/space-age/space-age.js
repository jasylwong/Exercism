const earth_years = {
  'mercury': 0.2408467,
  'venus': 0.61519726,
  'earth': 1,
  'mars': 1.8808158,
  'jupiter': 11.862615,
  'saturn': 29.447498,
  'uranus': 84.016846,
  'neptune': 164.79132,
}

const seconds_in_a_year = 60 * 60 * 24 * 365.25

export const age = (planet, seconds) => {
  const age_in_earth_years = seconds / (seconds_in_a_year * earth_years[planet])
  return parseFloat(age_in_earth_years.toFixed(2))
};
