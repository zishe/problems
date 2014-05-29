def determinant(m)
  case m.size
    when 0
      0
    when 1
      m[0][0]
    when 2
      res = m[0][0] * m[1][1] - m[0][1] * m[1][0]
    else
      (0...m.size).reduce(0) { |sum, n|
        res = m[0][n] * determinant(minor(m, n))
        n.even? ? sum += res : sum -= res
      }
  end
end

def minor(m, n)
  (1...m.size).each_with_object([]) { |x, o|
    o[x-1] = (0...m.size).each_with_object([]) { |i, oo|
      oo << m[x][i] if i != n }
  }
end

m1 = [ [1, 3], [2,5]]
m2 = [ [2,5,3], [1,-2,-1], [1, 3, 4]]


# p minor(m2, 1)

# p determinant [[1]]
# p determinant(m1)
p determinant(m2)

# a * det(a_minor) - b * det(b_minor) + c * det(c_minor)
# a * det(a_minor) - b * det(b_minor) + c * det(c_minor) - d * det(d_minor)
