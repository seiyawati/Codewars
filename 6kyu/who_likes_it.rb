# My Answer
def likes(names)
  length = names.size
  if length == 0
    "no one likes this"
  elsif length == 1
    "#{names[0]} likes this"
  elsif length == 2
    "#{names[0]} and #{names[1]} likes this"
  elsif length == 3
    "#{names[0]}, #{names[1]} and #{names[2]} likes this"
  else
    "#{names[0]}, #{names[1]} and #{length-2} others likes this"
  end
end

# Best Practices
def likes(names)
  case names.size
  when 0 
    "no one likes this"
  when 1 
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end

def likes(names)
  case names.length
  when 0
    "no one likes this"
  when 1
    "%s likes this" % names
  when 2
    "%s and %s like this" % names
  when 3
    "%s, %s and %s like this" % names
  else
    "%s, %s and %d others like this" %
      [names[0], names[1], names.length - 2]
  end
end
