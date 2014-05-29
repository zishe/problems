cubes = (1000..10000).map { |x| x**3 }
c = Hash.new
cube_sorted = cubes.map { |x| c[x] = x.to_s.chars.sort.join }

class Array
  def has_cubes(n, cubes)
    self.map { |i| i.to_i }.select { |i|
      cubes.include? i
    }.map { |i| (i**(1.0/3)).round }
  end
end

# p (5027**3).to_s.chars.permutation.map(&:join).uniq.has_cubes(4, cubes)
p (1000..10000).detect { |x| c.values.select { |y| y == (x**3).to_s.chars.sort.join }.size == 5 }**3
# p c.values.select { |y| y == (5027**3).to_s.chars.sort.join }
# p 5027**3
