# My Answer
def get_middle(s)
  return s[s.size / 2] if s.size.odd?
  s[s.size/2-1..s.size/2]
end

# Best Practice
def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end
