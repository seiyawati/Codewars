# My Answer and Best Practice
def array_diff(a, b)
  a - b
end

# Another Answer
def array_diff(a, b)
  # rejectは条件を反転させたselect
  a.reject {|e| b.include? e}
end
