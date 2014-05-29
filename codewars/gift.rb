wishlist = [
    {:name => "mini puzzle", :size => "small", :clatters => "yes", :weight => "light"},
    {:name => "toy car", :size => "medium", :clatters => "a bit", :weight => "medium"},
    {:name => "card game", :size => "small", :clatters => "no", :weight => "light"}
]

presents = [
    {:size => "medium", :clatters => "a bit", :weight => "medium"},
    {:size => "small", :clatters => "yes", :weight => "light"}
]

def guess_gifts(wishlist, presents)
  wishlist.select { |w| presents.any? { |p| p.all? { |k, v| w[k] == v } } }.map { |x| x[:name] }
end

p guess_gifts(wishlist, presents)

