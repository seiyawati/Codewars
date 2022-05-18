# My Answer
def pig_it(text)
  text.split.map { |word|
    if word =~ /[a-zA-Z]+/
      word[1..-1] + word[0] + 'ay'
    else
      word
    end
  }.join(' ')
end

# Best Practice
def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end
