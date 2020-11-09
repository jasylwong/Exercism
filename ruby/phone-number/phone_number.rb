module PhoneNumber
  def self.clean(number)
    number.delete('^0-9')
  end
end