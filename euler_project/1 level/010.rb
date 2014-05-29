require 'mathn'
started = Time.now
sum = Prime.instance.inject(0) { |sum, n|
  break sum unless n < 2_000_000
  sum + n
}
puts "Finished at #{(Time.now - started)}."
puts "Sum is #{sum}."

# rbx-2.0.0              Finished at 3.659708.
# ruby-2.0.0-p247        Finished at 4.056576
# ruby-2.1.0             Finished at 0.322326

# Sum is 142913828922
