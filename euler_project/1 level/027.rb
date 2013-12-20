require 'prime'

def find_prime_cons a, b
  go = true
  n = 0
  while go
    go = Prime.prime?(n**2 + a*n + b)
    n += 1
  end
  n - 1
end

l_max = 0
prod = 0
for i in (-999...1000)
  for j in (-999...1000)
    r = find_prime_cons(i, j)
    if r > l_max
      l_max = r
      prod = i*j
    end
  end
end
p l_max, prod
