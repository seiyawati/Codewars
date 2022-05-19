# My Answer
def duplicate_count_1(text)
  text.downcase.chars.uniq.select{ |s| text.downcase.count(s) > 1 }.count
end

# Best Practices
def duplicate_count_2(text)
  # ブロックを評価して真になった要素の個数をカウントして返します。
  ('a'..'z').count { |c| text.downcase.count(c) > 1 }
end

require 'benchmark'

text = "aabbcde"
Benchmark.bm do |r|
  r.report "duplicate_count_1" do
    duplicate_count_1(text)
  end

  r.report "duplicate_count_2" do
    duplicate_count_2(text)
  end
end

# user     system      total        real
# duplicate_count_1  0.000011   0.000002   0.000013 (  0.000009)
# duplicate_count_2  0.000033   0.000115   0.000148 (  0.000432)