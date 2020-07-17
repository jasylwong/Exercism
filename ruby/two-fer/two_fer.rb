module TwoFer
  def two_fer(name = "you")
    "One for #{name}, one for me."
  end

  module_function :two_fer
end
