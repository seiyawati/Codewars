# My Answer
def solution(number)
  sum = 0
  _number = number
  for i in 1..number
    _number -= 1
    if _number % 3 == 0 || _number % 5 == 0
      sum += _number
    end
  end
  sum
end

# Best Practice
def solution(number)
  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end

##  ruby 2.4以上
def solution(number)
  (1...number).select {|i| i%3==0 || i%5==0}.sum
end
