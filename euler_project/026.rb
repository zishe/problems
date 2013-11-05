require 'prime'

# def long_num div, len
#   a = []
#   n, t = div, 1
#   while a.size < len
#     t *= 10 if t <= n
#     a << t / n
#     t = t % n
#   end
#   a.join
# end

# def find_period_len m
#   start = 100
#   stop = false
#   while !stop and start < 10000
#     num = long_num(m, start)
#     # p num
#     i = 0
#     # from what digit cycle
#     while !stop and i < 5
#       len = 1
#       # lenght of cycle
#       while !stop and len < (num.length/2)
#         per = num[i..i]
#         rest = num[i+1..-1]
#         pr = rest.scan /\d{#{len}}/
#         # p per, rest, pr.uniq, nil
#         stop = true if pr.uniq.size == 1 and pr.size > 2
#         len += 1
#       end
#       i += 1
#     end
#     start *= 4
#   end
#   puts "#{m} :: #{len}\t\t[ #{start}  #{i} ]"
#   len
# end


# c = []
# Prime.each(1000).each do |i|
#   c << find_period_len(i)
# end
# p c.max


def len(n)
  x = 1
  for i in 2..n
    x = x * 10 % n
    break if x == 1 || x == 0
  end
  i
end

r = []
Prime.each(10000).each do |n|
  r << len(n)
end
p r.max
