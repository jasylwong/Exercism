module PhoneNumber
  def self.clean(full_number)
    number = full_number.delete('^0-9')
    return if number.length == 11 && number[0] != '1'

    number.length.between?(10, 11) ? number : nil
  end
end