require "prime"
r=0
Prime.each(10000000) do |p|
  break if p > 2000000
  r+=p
end
p r
