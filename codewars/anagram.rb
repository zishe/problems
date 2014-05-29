# class AnagramFinder
#   def initialize(starting_number)
#     @number = starting_number
#   end

#   def next_highest
#     a = @number.to_s.split('').reverse
#     highest = a[0].to_i
#     hi = 0 # index of highest numer

#     arr = a[1..-1].each_with_index.take_while { |x, i|
#       result = x.to_i >= highest
#       highest, hi = x.to_i, i + 1 if x.to_i > highest
#       result
#     }
#     return @number if arr.size == (a.size - 1)

#     si = arr.empty? ? 1 : arr.last.last + 2 # swap element index
#     a[hi], a[si] = a[si], a[hi]
#     (a[si..-1].reverse + a[0..si-1].sort).join.to_i
#   end
# end

class AnagramFinder
  def initialize(starting_number)
    @num = starting_number
  end

  def next_highest
    i_to_order = lambda { |i| i.to_s.chars.to_a.sort.join('') }
    sort_num = i_to_order.call(@num)
    p sort_num

    ((@num+1)..Float::INFINITY).take_while { |x|
      i_to_order.call(x) != sort_num
    }.last + 1
  end
end

a = AnagramFinder.new(466)
p a.next_highest
