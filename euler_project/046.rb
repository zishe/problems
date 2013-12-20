require 'mathn'

def expected?(n)
  m = 1
  found = false
  while 2*m*m < n
    if Prime.prime?(n - 2*m*m)
      found = true
      break
    end
    m += 1
  end
  found
end


def proof
  n = 3
  loop do
    unless Prime.prime?(n)
      break unless expected?(n)
    end
    n += 2
  end
  n
end

p proof
