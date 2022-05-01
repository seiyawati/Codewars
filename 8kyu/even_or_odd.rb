# My Answer
def even_or_odd(number)
  return 'Even' if number % 2 == 0
  'Odd'
end

# Best Practices
def even_or_odd(number)
  number.even? ? "Even" : "Odd"
end
