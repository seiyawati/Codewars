# My Answer
def get_count(input_str)
  vowels = ['a', 'e', 'i', 'o', 'u']
  count = 0
  for str in input_str.split(//)
    if vowels.include?(str)
      count += 1
    end
  end
  count
end

# Best Practices
def get_count(input_str)
  input_str.count("aeiou")
end

# -----------------------------------------------------------

# chars
"hello世界".chars # => ["h", "e", "l", "l", "o", "世", "界"]

# eachで書く、こっちの方がRubyらしい
def get_count(input_str)
  vowels = ['a', 'e', 'i', 'o', 'u']
  count = 0
  input_chars.chars.each do |letter|
    if vowels.include?(letter)
      count += 1
    end
  end
  count
end

# forは繰り返し処理の中と外で同じスコープで、eachは繰り返し処理の中と外でスコープが異なる。
