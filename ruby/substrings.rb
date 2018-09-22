require 'byebug'

def substrings(string, dictionary)
  output = Hash[dictionary.map {|z| [z,0]}]
  strings_ary = string.split
  strings_ary.each do |str|
    dictionary.each do |word|
    output[word] += str.scan(word).size
    end
  end
   output = output.select{ |k,v| v>0  }
   p output.sort_by{ |k,v| v }.reverse.to_h
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings("Howdy partner, sit down! How's it going?", dictionary)
