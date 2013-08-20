# require "prime"
# r=0
# Prime.each(10000000) do |p|
#   break if p > 2000000
#   r+=p
# end
# p r


require 'mathn'
started = Time.now
sum = Prime.instance.inject(0) { |sum, n|
  break sum unless n < 2_000_000
  sum + n
}
puts "Finished at #{(Time.now - started)}."
puts "Sum is #{sum}."
