require 'prime'

class Array
  def except(value)
    self - [value]
  end
end

def all_concat_prime? arr
  arr.map { |x| arr.except(x).map { |y| (x.to_s + y.to_s).to_i } }.flatten.uniq.all? { |i| Prime.prime? i }
end

arr = []
primes = []
Prime.each(10000) { |x| primes << x }
t = primes.size

(0..10).detect { |ai|
  a = primes[ai]
  (ai+1...t).detect { |bi|
    b = primes[bi]
    next unless [a, b].uniq.size == 2 and all_concat_prime? [a, b]
    (bi+1...t).detect { |ci|
      c = primes[ci]
      next unless [a, b, c].uniq.size == 3 and all_concat_prime? [a, b, c]
       (ci+1...t).detect { |di|
        d = primes[di]
        next unless [a, b, c, d].uniq.size == 4 and all_concat_prime? [a, b, c, d]
        (di+1...t).detect { |ei|
          e = primes[ei]
          arr = [a, b, c, d, e]
          arr.uniq.size == 5 and all_concat_prime? arr
        }
      }
    }
  }
}

p arr.reduce(:+)
