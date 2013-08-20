# require "prime"
# r=0
# Prime.each(10000000) do |p|
#   break if p > 2000000
#   r+=p
# end
# p r


require 'mathn'
puts "Started at #{Time.now}."
sum = Prime.new.inject(0) { |sum, n|
  break sum unless n < 1_000_000
  sum + n
}
puts "Finished at #{Time.now}."
puts "Sum is #{sum}."
