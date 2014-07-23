class Integer
  def pal
    to_s.chars.reverse.join.to_i
  end
end

p (1...10000).select { |x|
  o = x
  50.times.all? {
    o = o + o.pal
    o.pal != o
  }
}.size
