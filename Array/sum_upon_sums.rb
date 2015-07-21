require 'set'

def sum_upon_sums(arr)
  set = Set.new()
  arr.each { |el| set << el}            # O(n)

  0.upto(arr.length) do |el|            # O(n)
    if !set.include?(el)                  # O(1)
      return el                           # O(1)
    end
  end

end

# Big O total => O(n)

p s_u_s([6,1,9,2,7,0,4,5,8])
