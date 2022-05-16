# My Answer
def count_bits(n)
  n.to_s(2).to_i.digits.count(1)
end

# Best Practce
def count_bits(n)
  n.to_s(2).count "1"
end
