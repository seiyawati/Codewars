# My Answer
def high_and_low(numbers)
  numbers.split.map{ |v| v.to_i }.minmax.reverse.join(' ')
end

# Best Practce
def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end
