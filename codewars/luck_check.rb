def sum n
  n.split('').map { |x| x.to_i }.reduce(:+)
end
num = "4452954311118"
sum = -> (n) { n.split('').map { |x| x.to_i }.reduce(:+) }
p (0..num.size-1).to_a.any? { |x|
  sum.(num[0..x]) == sum.(num[x+1..-1])
}


def luck_check (str)
  sum = lambda { |n| n.split('').map { |x| x.to_i }.reduce(:+) }
  p str
  (0..str.size-1).to_a.any? { |x|
    sum.call(str[0..x]) == sum.call(str[x+1..-1])
  }
end


def sum n
  n.split('').map { |x| x.to_i }.reduce(:+)
end

def luck_check (str)
  raise Error if str.empty? or !str.to_i.is_a? Integer
  (0..str.size-1).to_a.any? { |x|
    sum(str[0..x]) == sum(str[x+1..-1])
  }
end

# User.where(created_at: [Time.now.in_time_zone('Asia/Dubai')..Time.now.in_time_zone('Asia/Dubai').beginning_of_day] ).any?


p luck_check "543970707"
