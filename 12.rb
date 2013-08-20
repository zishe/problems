require 'prime'

def m
  mdev = 0
  stop = true
  n = 1
  s = 0
  dev = 0
  while stop
    s+=n
    sdev = find_divisors s
    dev = sdev.length
    # p dev
    stop = false if dev > 500
    if dev > mdev
      mdev = dev
      p mdev
      p sdev
    end
    n+=1
  end
  s
end


def find_divisors num
  a = []
  b = []
  max = num
  x = 1
  while x < max
    if num % x == 0
      a << x
      max = num / x
      b << max
    end
    x+=1
  end
  a+b.reverse
end

# p find_divisors(10)
p m
