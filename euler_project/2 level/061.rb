def polygonal(f)
  Enumerator.new { |x|
    y = 0
    loop {
      y += 1
      x << f.(y)
    }
  }
end

poligones = [
    ->(n) { n*(n+1)/2 },
    ->(n) { n*n },
    ->(n) { n*(3*n-1)/2 },
    ->(n) { n*(2*n-1) },
    ->(n) { n*(5*n-3)/2 },
    ->(n) { n*(3*n-2) },
]

def is_cyclic(a, b)
  a % 100 == b / 100
end

nums = poligones.map { |x| polygonal(x).take_while { |y| y < 10_000 }.drop_while { |y| y < 1000 } }.permutation.to_a
r = []
p nums.each_with_object([]) { |arr, r|
  arr[0].each { |y|
    l = [y]
    if (1..6).all? { |i|
      res = arr[i == 6 ? 0 : i].select { |z|
        is_cyclic(l.last, z) && (i == 6 ? l.first == z : true)
      }
      l << res.last if res.size > 0
      res.size > 0
    }
    r << l[0..-2]
    end
  }
}.map(&:sort).uniq.first.reduce(:+)

# => 28684
