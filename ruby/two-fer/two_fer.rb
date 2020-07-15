module TwoFer
  def two_fer(name = nil)
    "One for #{name ? name : "you"}, one for me."
  end

  module_function :two_fer
end
