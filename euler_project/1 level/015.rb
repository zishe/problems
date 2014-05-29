a = [1,2]

19.times do
  r = [1]
  a.length.times do |x|
    if x > 0
      r << a[x] + r[x - 1]
    end
    if x == a.length - 1
      r << r[x]*2
    end
  end
  a = r
  # p r
end

p (1..40).reduce(:*)/(((1..20).reduce(:*))**2)
