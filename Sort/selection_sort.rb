require 'byebug'
def selection_sort(arr)
  swap_index = 0
  arr.length.times do |start|
    min = arr[start]
    swap_index = start
    start.upto(arr.length - 1) do |stop|
      if arr[stop] < min
        min = arr[stop]
        swap_index = stop
      end
    end
    arr[start], arr[swap_index] = arr[swap_index], arr[start]
  end
  arr
end


p selection_sort([5,-1,3,20,7,-5,0,9])
