def triangle?(n)
  r = (Math.sqrt(8*n+1)-1)/2
  r.to_i == r
end

def pentagonal?(n)
  r = (Math.sqrt(24*n+1)+1)/6
  r.to_i == r
end

def hexagonal?(n)
  r = (Math.sqrt(8*n+1)+1)/4
  r.to_i == r
end

n = 2
x = 0
found = 0
while found < 2
  x = n*(2*n - 1)
  if pentagonal? x and hexagonal? x
    found += 1
    p x
  end
  n += 1
end
p x
