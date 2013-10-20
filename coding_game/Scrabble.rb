# def check word, letters
#   r = true
#   word.each do |l|
#     if letters.include? l
#       letters.delete_at letters.index(l)
#     else
#       r = false
#     end
#   end
#   r
# end

# b = letters.split(//).permutation.to_a.map {|n| n.join() }.map {|word|
#   a.reject { |s| !word.include? s }
# }.uniq.flatten


def check word, letters
  start = letters.size
  word.each { |l| letters.delete_at(letters.index(l)) if letters.include?(l) }
  (start - letters.size) == word.size
end

arr = { "e a i o n r t l s u" => 1, "d g" => 2, "b c m p" => 3, "f h v w y" => 4, "k" => 5, "j x" => 8, "q z" => 10 }

newar = Hash.new
arr.each_pair {|k, v| k.split(' ').each { |e| newar[e]=v } }

letters = "etiewrn"

a = %w(entire
tween
soft
would
test)

b = a.select { |e| check(e.split(//), letters.split(//)) }
p b
res = ""
max_sum = 0
b.map { |n|
  sum = n.split(//).map { |s| newar[s] }.inject(:+)
  res = n if max_sum < sum
}
p res



