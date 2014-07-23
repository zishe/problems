def triangle?(n)
  n = (Math.sqrt(8*n+1)-1)/2
  n.to_i == n
end

def pentagonal?(n)
  n = (Math.sqrt(24*n+1)+1)/6
  n.to_i == n
end

def hexagonal?(n)
  n = (Math.sqrt(8*n+1)+1)/4
  n.to_i == n
end

p (2..Float::INFINITY).take_while.with_object([]) { |n, f|
  x = n*(2*n-1)
  f << x if pentagonal? x and hexagonal? x
  f.size < 2
}.last

# => 1533776805
