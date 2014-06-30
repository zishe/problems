class PrimeFactorizer
  def initialize n
    @n = n
  end
  def factor
    (2..@n).take_while.with_object(Hash.new(0)) do |x, f|
      while @n % x == 0
        @n = @n / x
        f[x] += 1
      end
      @n > 1
    end
  end
end

p PrimeFactorizer.new(13).factor
p PrimeFactorizer.new(10000000001).factor
