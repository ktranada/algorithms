require 'byebug'
def mergesort(arr)
  return arr if arr.length == 1
  return [] if arr.empty?
  middle = arr.length/2
  left_sorted, right_sorted = mergesort(arr.take(middle)), mergesort(arr.drop(middle))

  merge(left_sorted, right_sorted)

end


def merge(left, right)
  merged_arr = []
  until left.empty? || right.empty?
    merged_arr << (left.first < right.first ? left.shift : right.shift)
  end
  merged_arr + left + right
end


p mergesort([3,9,-2,5,6])
p mergesort([1,-2,-3,-4,-5,-6, 20])
