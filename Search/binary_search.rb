def binary_search(array, target)
  return -1 if array.empty?
  start, stop = 0, array.length
  while start <= stop
    mid = (start + stop) / 2
    current_value = array[mid]
    case current_value <=> target
    when -1
      start = mid + 1
    when 0
      return mid
    when 1
      stop = mid
    end
  end
  -1
end


if __FILE__ == $PROGRAM_NAME
  p "Expect bsearch for value 3 in [1,2,3,4,5,6,7] to yield index: " + binary_search([1,2,3,4,5,6,7], 3).to_s
  p "Expect bsearch for value 4 in [1,2,3,4,5,6,7] to yield index: " + binary_search([1,2,3,4,5,6,7], 4).to_s

end
