# My Answer
def create_phone_number(numbers)
  first = numbers[0..2].join
  second = numbers[3..5].join
  third = numbers[6..9].join
  "(#{first}) #{second}-#{third}"
end

# Best Practice
def create_phone_number(array)
  '(%d%d%d) %d%d%d-%d%d%d%d' % array
end
