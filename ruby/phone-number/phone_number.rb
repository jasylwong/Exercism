module PhoneNumber
  def self.clean(full_number)
    number = full_number.delete('^0-9')
    
    return if number.length == 11 && number[0] != '1'
    return if %w(0 1).include?(number[-10]) || %w(0 1).include?(number[-7])

    number.length.between?(10, 11) ? number.split('').last(10).join : nil
  end
end
