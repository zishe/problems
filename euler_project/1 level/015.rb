a = [1,2]

19.times do
  r = [1]
  a.size.times do |x|
    r << a[x] + r[x - 1] if x > 0
    r << r[x] * 2 if x == a.size - 1
  end
  a = r
end

p a.last

p (1..40).reduce(:*) / (1..20).reduce(:*)**2
# => 137846528820
