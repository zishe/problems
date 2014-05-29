
# 3.times.map { gets.chomp }

# (200..1000).select { |x| x % 11 == 0 }.each { |x| puts x }
# p Hash[['A','A','A','A','B','B','C'].group_by { |x| x }.map { |k, v| [k, v.length] }]

# p ['A','A','A','A','B','B','C'].each_with_object(Hash.new(0)) { |l, o| o[l] += 1 }
