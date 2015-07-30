# Find the earliest time when a frog can jump to the other side of a river.
# The frog can cross only when leaves appear at every position across the river from 1 to X.

def earliest_cross(x, a)

  leaves = []
  steps = x
  a.each_with_index do |el, idx|
    if !leaves[el]
      leaves[el] = true
      steps -= 1
    end
    if steps == 0
      return idx
    end
  end
  -1
end

if __FILE__ == $PROGRAM_NAME
  # p earliest_cross(5, [1,4,2,1,1,5,3])
  p earliest_cross(4, [1,4,2,1,1,5,3])

end
