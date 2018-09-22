require 'byebug'

def stock_picker(ary = [])
  #initialize best prices array
  result = [0, 0]

  ary.each_with_index do |price, index|
    #Works on all elements except the last as can't sell after
    unless price.equal? ary.last
      #Drops current and previous elements
      ary_new = ary.drop(index + 1).sort
      #Set new best buy sell ratios if found
      if ary_new.last - price > result[1] - result[0]
        result = [price, ary_new.last]
      else
        result
      end
    end
  end
  #Return indexes of best days
  ary.index(result.first), ary.index(result.last)

end
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
