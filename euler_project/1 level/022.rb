contents = File.read '../data/names.txt'

p contents.split(',').map { |n| n.scan(/[A-Z]+/)[0] }.sort.
  each_with_index.map { |b, i|
    b.chars.map { |c| c.ord - 64 }.reduce(:+) * i.next
  }.reduce(:+)
