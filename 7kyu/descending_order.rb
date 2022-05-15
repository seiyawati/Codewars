# My Answer
def descending_order(n)
  # joinはto_sした値を返す
  n.digits.sort_by { |v| v.to_i }.reverse.join
end

# Best Practice
def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end
