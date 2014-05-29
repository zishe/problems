def ip_to_int32(ip)
  ip.split('.').map { |x| x.to_i(10).to_s(32) }
end
p ip_to_int32 '128.32.10.1'

p '10000000001000000000101000000001'.to_i(2).to_s(10)
p "40100a1".to_i(32).to_s(10)
