module TokenGenerator
  def self.get_token(length = 8)
    ['A'..'Z', 'a'..'z', '0'..'9'].map(&:to_a).flatten.shuffle[0...length].join
  end
end

require 'securerandom'
require 'benchmark'

puts Benchmark.measure { 10000.times { TokenGenerator.get_token } }
puts Benchmark.measure { 10000.times { SecureRandom.urlsafe_base64(8, false) } }


