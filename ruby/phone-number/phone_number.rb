module PhoneNumber
  def self.clean(full_number)
    number = full_number.delete('^0-9')

    number.length.between?(10, 11) ? number : nil
  end
end