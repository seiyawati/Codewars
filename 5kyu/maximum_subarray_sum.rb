# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]

def max_sequence(arr)
  sum = 0
  max = 0

  arr.each do |i|
    sum += i

    if sum < 0
      sum = 0
    end

    if sum > max
      max = sum
    end
  end
  max
end

# Best Practice
def max_sequence(arr)
  return 0 if arr.empty?

  max_ending_here = max_so_far = 0

  arr.each do |n|
    max_ending_here = [n, max_ending_here + n].max
    max_so_far = [max_so_far, max_ending_here].max
  end

  max_so_far
end
