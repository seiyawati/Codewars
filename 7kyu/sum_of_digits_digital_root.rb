# My Answer
def digital_root(n)
  sum = n.digits.sum
  while true
    if sum < 10
      return sum
    else
      sum = sum.digits.sum
    end
  end
end

# Best Practice
def digital_root(n)
  n < 10 ? n : digital_root(n.digits.sum)
end
