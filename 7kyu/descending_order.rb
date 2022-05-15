# My Answer
def descending_order(n)
  # joinはto_sした値を返す
  n.digits.sort_by { |v| v.to_i }.reverse.join
end

# Best Practice
def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

# sort, <=>演算子
# sortのアルゴリズムがよくわかっていない
require 'date'

data = [
  {id: 1, name: '吉田(A)', ruby: 'yoshida', join_date: Date.new(2009, 4, 1)},
  {id: 2, name: '鈴木', ruby: 'suzuki', join_date: Date.new(2015, 4, 1)},
  {id: 3, name: '吉田(B)', ruby: 'yoshida', join_date: Date.new(2009, 4, 1)},
  {id: 4, name: '佐藤', ruby: 'sato', join_date: Date.new(2006, 10, 1)},
  {id: 5, name: '田中', ruby: 'tanaka', join_date: Date.new(2009, 4, 1)},
]

data.sort do |a, b|
  b[:id] <=> a[:id]
end
