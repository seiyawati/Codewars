def valid_parentheses(string)
  parentheses = 0
  string.split("").each do |x|
    return false if x == ")" && parentheses == 0
    parentheses += 1 if x == "("
    parentheses -= 1 if x == ")"
  end
  parentheses == 0 ? true : false
end

#Best Practice
def valid_parentheses(string)
  open = 0
  string.chars.each do |c|
    open += 1 if c == "("
    open -= 1 if c == ")"
    return false if open < 0
  end
  open == 0
end

def valid_parentheses(string)
  # 「(」, 「)」以外の文字列を削除
  str = string.delete("^()")
  while str.gsub!("()",''); end
  str == ''
end
