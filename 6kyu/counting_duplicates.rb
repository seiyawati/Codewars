# My Answer
def duplicate_count(text)
  text.downcase.chars.uniq.select{ |s| text.downcase.count(s) > 1 }.count
end

# Best Practices
def duplicate_count(text)
  # ブロックを評価して真になった要素の個数をカウントして返します。
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end
