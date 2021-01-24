module RunLengthEncoding
  def self.encode(input)
    output = ''

    input.gsub(/(.)\1*/).to_a.each do |e|
      output += "#{e.length == 1 ? '' : e.length}#{e[0]}"
    end

    output
  end
end