w = 4
h = 5
s = "efds!@fds".upcase.gsub(/[^A-z\?]/, "?").split(//)
p s

a = []
a << " #  ##   ## ##  ### ###  ## # # ###  ## # # #   # # ###  #  ##   #  ##   ## ### # # # # # # # # # # ### ### "
a << "# # # # #   # # #   #   #   # #  #    # # # #   ### # # # # # # # # # # #    #  # # # # # # # # # #   #   # "
a << "### ##  #   # # ##  ##  # # ###  #    # ##  #   ### # # # # ##  # # ##   #   #  # # # # ###  #   #   #   ## "
a << "# # # # #   # # #   #   # # # #  #  # # # # #   # # # # # # #    ## # #   #  #  # # # # ### # #  #  #       "
a << "# # ##   ## ##  ### #    ## # # ###  #  # # ### # # # #  #  #     # # # ##   #  ###  #  # # # #  #  ###  #  "
# p a

letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ?".split(//)
r = []
(0..h-1).each { |n| r[n] = "" }
s.each { |l|
  if letters.include? l
    num = letters.index l
    start = num*w
    (0..h-1).each { |n|
      r[n] += a[n][start..(start+w-1)]
    }
  end
 }
(0..h-1).each { |n| p r[n] }




w = STDIN.gets.strip.to_i
h = STDIN.gets.strip.to_i
s = STDIN.gets.strip.upcase.gsub(/[^A-Z\?]/, "?").split(//)
a = []
h.times {a << STDIN.gets }
letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ?".split(//)
r = []
(0..h-1).each { |n| r[n] = "" }
s.each { |l|
  if letters.include? l
    num = letters.index l
    start = num * w
    (0..h-1).each { |n|
      r[n] += a[n][start..(start+w-1)]
    }
  end
 }
(0..h-1).each { |n| puts r[n] }





# Solution 3

w = STDIN.gets.strip.to_i
h = STDIN.gets.strip.to_i
s = STDIN.gets.strip.split(//)
a = []
h.times {a << STDIN.gets }

letters = ("A".."Z").to_a

(0..h-1).each do |i|
  l = ""
  s.each do |c|
    n = letters.index(c.upcase)
    n = 26 if n.nil?
    l += a[i][n*w..((w*(n+1))-1)]
  end
  puts l
end


# Solution 4

w = STDIN.gets.strip.to_i
h = STDIN.gets.strip.to_i
s = STDIN.gets.strip.upcase.gsub(/[^A-Z]/, "?").split(//)
a = []
h.times {a << STDIN.gets }

letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ?".split(//)

(0..h-1).each do |i|
  l = ""
  s.each do |c|
    n = letters.index(c)
    l += a[i][n*w..((w*(n+1))-1)]
  end
  puts l
end


