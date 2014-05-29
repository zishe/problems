def simplecall
  1000000.times { "hallo".length }
end

def hallo a
end

def simpleucall
  1000000.times { hallo "hallo" }
end

def fibo_r(n)
  n < 2 ? 1 : fibo_r(n - 2) + fibo_r(n - 1)
end

def fibo(n)
  r = fibo_r(n)
  puts r
end

def hash1 n
  h = {}
  1.upto(n).each { |i|
    h[i.to_s(16)] = i;
  }
  c = 0
  n.downto(0) { |i|
    c += 1 if h[i.to_s(16)]
  }
  p c
end

time = Time.now
fibo(30)
p Time.now - time
