def pentagonal?(n)
  r = (Math.sqrt(1+24*n)+1)/6
  r.to_i == r
end

result = 0
notFound = true
i = 1

while notFound do
  i += 1
  n = i*(3*i-1)/2

  (i-1).downto(1).each do |j|
    m = j*(3*j-1)/2
    if pentagonal?(n - m) and pentagonal?(n + m)
      result = n - m
      notFound = false
      break
    end
  end
end

p result
