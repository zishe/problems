a = File.read('../data/triangle.txt').split(/\n/).map { |n| n.split(' ').map(&:to_i) }

(a.size - 1).downto(1).each { |x|
  (0..(a[x].size-2)).each { |y|
    a[x-1][y] += [a[x][y], a[x][y+1]].max
  }
}

p a[0][0]
