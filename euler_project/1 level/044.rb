def pentagonal?(n)
  n = (Math.sqrt(1+24*n)+1)/6
  n.to_i == n
end

pn = ->(n) { n*(3*n-1)/2 }
p catch(:result) {
  (2..Float::INFINITY).each { |i|
    n = pn.(i)
    (i-1).downto(1).each { |j|
      m = pn.(j)
      throw :result, n - m if pentagonal?(n - m) and pentagonal?(n + m)
    }
  }
}

# => 5482660
