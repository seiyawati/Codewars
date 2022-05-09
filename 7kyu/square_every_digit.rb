# My Answer and Best Practice
def square_digits num
  num.to_s.chars.map { |v| v.to_i**2 }.join.to_i
end

# Another Answer ruby2.4以上から使えるようになった
def square_digits num
  num.digits.map { |d| d*d } .reverse.join.to_i
end
