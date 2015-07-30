# O(n^2)
def insertion_sort(array)

  array.length.times do |c_index|
    backstep = c_index
    while backstep > 0 && array[backstep] < array[backstep-1]
      array[backstep-1 ], array[backstep] = array[backstep], array[backstep -1]
      backstep -= 1
    end
  end
  array
end


p insertion_sort([10,2,9,8,5,1,7])
