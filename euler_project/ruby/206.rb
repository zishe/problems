form = '1424344454647484940'
        1000000000000000000
answer = 0

(1_000_000_000..5_000_000_000).step(10) do |n|
  next if n.to_s[-2] != '3' && n.to_s[-2] != '7'
  answer = n*n
  break if !!(answer.to_s =~ /\A1\d2\d3\d4\d5\d6\d7\d8\d9\d0\Z/)


  # if !!(answer.to_s =~ /\d+8\d9\d0\Z/)
  #   p n
  #   p answer

  #   # break
  # end

end

puts answer
