size = 100
ways = Array.new(size + 1, 0)
ways[0] = 1

(1..size-1).each { |i|
  (i..size).each { |j|
    ways[j] += ways[j - i]
  }
}
p ways[100]