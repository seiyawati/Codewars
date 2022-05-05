# My Answer
def disemvowel(str)
  vowels = ['a', 'e', 'i', 'o', 'u']
  str.chars.select { |letter| !vowels.include?(letter.downcase) }.inject(:+)
end

# Best Practice
def disemvowel(str)
  str.delete('aeiouAEIOU')
end
