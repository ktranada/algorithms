def two_sum(array, target)
  hash = Hash.new()
  result = []
  array.each_with_index do |el, idx|
    hash[el] = idx
    diff = target - el
    if hash.include?(diff) && hash[el] != hash[diff]
      result[0], result[1] = hash[el], hash[diff]
    end
  end
  result.sort
end


p two_sum([1,2,3,4], 6)
p two_sum([-1, 3, 20, -9, 50], -10)
p two_sum([1,2,5,2,-50,20,99,100,22,35], 42)
