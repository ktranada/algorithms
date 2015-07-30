# A zero-indexed array A consisting of N integers is given. An equilibrium index
# of this array is any integer P such that 0 ≤ P < N and the sum of elements of
# lower indices is equal to the sum of elements of higher indices, i.e.

# Time: O(n)
# Space: O(n)
def equi(a)
    # write your code in Ruby 2.2
    return -1 if a.empty?
    accum_sum = 0
    total_sum = a.inject(:+)

    result = []
    left_sum = 0
    a.each_with_index do |el, idx|
       right_sum = total_sum - left_sum - el
       if left_sum == right_sum
          return idx
       end
       left_sum += el
    end
    -1
end
