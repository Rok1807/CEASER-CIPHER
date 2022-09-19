def ceaser_cipher(string, shift)
  ascii_array = string.bytes
  puts ascii_array
  ceasar_array = ascii_array.map do |ascii_number|
    if ascii_number.between?(65, 90) || ascii_number.between?(97, 122)
      a = ascii_number + shift
      if ascii_number.between?(65, 90) && a > 90
        a -= 26
      elsif ascii_number.between?(97, 122) && a > 122
        a -= 26
      else
        a
      end
    else
      ascii_number
    end
  end
  puts ceasar_array.pack('c*')
end
