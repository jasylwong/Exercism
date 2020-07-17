export const gigasecond = (time) => {
  const oneGigasecond = 1e12
  return new Date(time.getTime() + oneGigasecond)
};
