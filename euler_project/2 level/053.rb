class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end

p (1..100).map { |x| (1..x).select { |y| x.fact/y.fact/(x-y).fact > 1_000_000  }.size }.reduce :+
