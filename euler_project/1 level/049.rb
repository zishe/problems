require 'mathn'

res = []
Prime.each(10000) do |n|
  if n > 1000
    a = n.to_s.chars.permutation.map { |x| x.join }.uniq.map(&:to_i).select {
      |x| Prime.prime?(x) && x > 1000 }.sort
    if a.size > 2
      (0..a.size-2).each { |i|
        (i+1..a.size-1).each { |j|
          x, y = a[i], a[j]
          res << [x, y, (y+y-x)] if a.include?(y+y-x)
        }
      }
    end
  end
end

p res.uniq.sort.map(&:join).last.to_i

# => 296962999629
