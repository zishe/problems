
# 3.times.map { gets.chomp }

(200..1000).select { |x| x % 11 == 0 }.each { |x| puts x }
