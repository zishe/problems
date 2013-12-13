w, h = 120, 176

n = "W 4090 B 100 W 20 B 100 W 20 B 100 W 20 B 100 W 1020 B 2 W 118 B 2 W 118 B 2 W 118 B 2 W 118 B 2 W 26 B 10 W 82 B 2 W 25 B 12 W 81 B 2 W 23 B 4 W 8 B 4 W 79 B 2 W 23 B 2 W 12 B 2 W 79 B 2 W 22 B 2 W 14 B 2 W 78 B 2 W 21 B 3 W 14 B 3 W 77 B 2 W 21 B 2 W 16 B 2 W 77 B 2 W 20 B 3 W 16 B 3 W 36 B 64 W 18 B 18 W 20 B 64 W 18 B 18 W 20 B 64 W 18 B 18 W 20 B 64 W 18 B 18 W 60 B 2 W 20 B 2 W 18 B 2 W 76 B 2 W 20 B 3 W 16 B 3 W 76 B 2 W 20 B 3 W 16 B 2 W 77 B 2 W 20 B 4 W 14 B 3 W 77 B 2 W 20 B 4 W 14 B 2 W 78 B 2 W 20 B 2 W 1 B 2 W 12 B 2 W 79 B 2 W 20 B 2 W 1 B 4 W 8 B 4 W 79 B 2 W 20 B 2 W 3 B 12 W 81 B 2 W 20 B 2 W 4 B 10 W 82 B 2 W 20 B 2 W 96 B 2 W 20 B 2 W 96 B 2 W 20 B 2 W 96 B 2 W 20 B 2 W 96 B 2 W 20 B 2 W 96 B 2 W 20 B 2 W 96 B 2 W 20 B 2 W 96 B 2 W 20 B 2 W 96 B 2 W 20 B 2 W 96 B 2 W 20 B 2 W 96 B 2 W 20 B 2 W 56 B 100 W 20 B 100 W 20 B 100 W 20 B 100 W 46 B 10 W 4 B 2 W 20 B 2 W 81 B 12 W 3 B 2 W 20 B 2 W 79 B 16 W 1 B 2 W 20 B 2 W 79 B 16 W 1 B 2 W 20 B 2 W 78 B 20 W 20 B 2 W 77 B 21 W 20 B 2 W 77 B 21 W 20 B 2 W 76 B 22 W 20 B 2 W 76 B 22 W 20 B 2 W 76 B 22 W 20 B 2 W 76 B 22 W 20 B 2 W 76 B 22 W 20 B 2 W 76 B 22 W 20 B 2 W 76 B 22 W 20 B 2 W 77 B 20 W 21 B 2 W 77 B 20 W 21 B 2 W 78 B 18 W 22 B 2 W 79 B 16 W 23 B 2 W 79 B 16 W 23 B 2 W 81 B 12 W 25 B 2 W 56 B 100 W 20 B 100 W 20 B 100 W 20 B 100 W 2420 B 100 W 20 B 100 W 20 B 100 W 20 B 100 W 5050".split(' ')

m = n.each_slice(2).map { |x|
  (x[0] == "W" ? [0] : [1]) * x[1].to_i
}.flatten.each_slice(120).to_a.map {|x| x.join}
p m


m = a.each_slice(120).to_a #.map {|x| puts x.join}


# lines_indent = 0
# line_thin = 0
# lines = 0
# period = 0

# outset = 0

# y = 0
# while y < h
#   x = 0
#   while x < w
#     if m[y][x] > 0
#       if line_thin == 0

#         outset = x if outset == 0

#         lines_indent = y

#         while m[y][x] > 0
#           line_thin += 1
#           y += 1
#         end
#       else
#         while m[y][x] > 0
#           y += 1
#         end
#       end
#       lines += 1
#     end

#     if period == 0 and line_thin > 0
#       while m[y][x] == 0
#         period += 1
#         y += 1
#       end
#     end

#     x += 1
#   end
#   break if line_thin > 0
#   y += 1
# end
# lines += 1

# puts "line_thin #{line_thin}"
# puts "period #{period}"
# puts "lines #{lines}"
# puts "lines_indent #{lines_indent}"
# puts "outset #{outset}"


# notes = "gfedcbagfedc".split(//).map { |x| x.upcase }
# p notes


# start = lines_indent + line_thin / 2
# per = (period + line_thin) / 2
# cycles = notes.size

# # p start, start + per * cycles, per
# pre_color = 0
# coors = []

# #remove lines
# ends = start + per * (cycles - 3)
# starts = start - per

# # redius = period/2.0
# # bl = Array.new(period) { Array.new(period) { 0 } }
# # (0...period).each { |x|
# #   (0...period).each { |y|
# #     bl[x][y] = 1 if Math.sqrt((redius - x).abs**2 + (redius - y).abs**2) < redius

# #   }
# # }
# # bl.map {|x| puts x.join}

# # wh = Array.new(period) { Array.new(period) { 0 } }
# # (0...period).each { |x|
# #   (0...period).each { |y|
# #     l = Math.sqrt((redius - x).abs**2 + (redius - y).abs**2)
# #     wh[x][y] = 1 if l < redius + 1 and l > redius - 1

# #   }
# # }
# # wh.map {|x| puts x.join}

# ran = []
# Range.new(starts, ends).step(per) do |y|
#   len = 0
#   x = outset
#   # pre_color = m[outset + 1][x]
#   # p pre_color
#   ran << y

#   while x < w - outset
#     #p m[y][x]
#     if pre_color != m[y][x]
#       while pre_color != m[y][x] and x < w - outset
#         len += 1
#         x += 1
#       end
#       if len > line_thin
#         # p len
#         coors << [y, len]
#       end
#       len = 0
#     end
#     x += 1
#   end
#   pre_color = (pre_color - 1).abs
# end

# p coors
# p ran

# p coors.map { |x| notes[ran.index x[0]] }


# liness = []
# x = 0
# while x < w
#   y = 0
#   while y < h
#     len = 0
#     if m[y][x] > 0
#       start = y
#       while m[y][x] > 0
#         # p "#{y} #{x}"
#         len += 1
#         y += 1
#       end
#       liness << [start, y, x] if len > 45
#     end
#     y += 1
#   end
#   x += 1
# end

# p liness


