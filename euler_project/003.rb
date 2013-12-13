require 'mathn'
num = 600851475143
p (1..(Math.sqrt(num))).select{ |x| (num % x).zero? }.select(&Prime.method(:prime?)).last
