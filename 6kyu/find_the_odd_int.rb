# My Answer
def find_it(seq)
  seq.group_by(&:itself).each do |k, v|
    if v.size.odd?
      return k
    end
  end
end

# Best Practice
def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end

def find_it(seq)
  seq.find { |n| seq.count(n).odd? }
end
