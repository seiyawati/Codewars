# My Answer
def spin_words(string)
  string.split.map { |v|
    if v.size >= 5
      v.reverse
    elsif v.size < 5
      v
    end
  }.join(' ')
end

# Best Practice
def spinWords(string)
  # 5以上
  string.gsub(/\w{5,}/, &:reverse)
  # string.gsub(/\w{5,}/) { |s| s.reverse }
end

def spinWords(string)
  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
end
