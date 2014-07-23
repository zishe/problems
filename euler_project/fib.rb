module Fibo
  def self.enum
    Enumerator.new do |y|
      i, j = 0, 1
      loop { i, j = j, i + j; y.yield i }
    end
  end
end
