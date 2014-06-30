contents = File.read '../data/names.txt'
p contents.split(',').map { |n| n.scan(/[A-Z]+/)[0] }.sort.
  each_with_index.map { |b, i|
    b.split(//).map { |c| c.ord - 64 }.reduce(:+) * (i+1)
  }.reduce(:+)
