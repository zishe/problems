data = {:key1=> "val1", :key2=> "val2", :key3=> ["val1", "val2"]}
arr = []
data.each do |k,v|
  arr << k
end
p arr
