def quicksort(arr)
  pivot = arr.first
  low = 1
  high = arr.length - 1
  while true
    while arr[low] < pivot
      low += 1
    end
    while arr[high] > pivot
      high -= 1
    end
    if  low >= high

end
