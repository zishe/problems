class Integer
  def factors()
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i|
      f << i
      f << self/i unless i == self/i
      f
    end.sort
  end
end

def m
  stop = true
  n = 1
  s = 0
  while stop
    s+=n
    d = s.factors()
    stop = false if d.length > 500
    n+=1
  end
  s
end

start_time = Time.now
p m
p Time.now - start_time
