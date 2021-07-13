# merge_sort method that accepts an array as an argument
  # find the length of the array
  # if length < 2
    #return
  # else
    # sort left half of array
    # sort right half of array
    # combine left and right half of the arrays

def merge_sort(array)
  if array.length <= 1
    return array
  else
    midpoint = array.length/2
    left_half = merge_sort(array.slice(0...midpoint))
    right_half = merge_sort(array.slice(midpoint...array.length))
    merge(left_half, right_half)
  end
end

def merge(left_half, right_half)
  sorted_array = []
  while !left_half.empty? && !right_half.empty? do
    if left_half[0] < right_half[0]
      sorted_array.push(left_half.shift)
    else
      sorted_array.push(right_half.shift)
    end
  end
end