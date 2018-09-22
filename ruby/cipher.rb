require 'byebug'

def caesar_cipher(str, rotation = 0)
  range = ('a'..'z').to_a
  range_rotated = range.rotate(rotation)
  ranges_ar = range.zip(range_rotated).to_h

  ciphered = str.split('').map do |input|
    if ranges_ar.include?(input)
      input = ranges_ar[input]
    elsif ranges_ar.include?(input.downcase)
      input = ranges_ar[input.downcase].upcase
    else input
        end
  end

  puts ciphered.join
end

caesar_cipher('What a string!', 5)
