module Sort
  # Bubble sort
  def bubble_sort(array)
    k = array.length - 1
    swapped = true
    while swapped
      swapped = false
      k.times do |a|
        if array[a] > array[a + 1]
          array[a], array[a + 1] = array[a + 1], array[a]
          swapped = true
        end
      end
    end

    array
  end
end
