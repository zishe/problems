class TreeNode
  attr_accessor :left
  attr_accessor :right
  attr_accessor :value
end

# def tree_by_levels(node)
#   o = []
#   walk = lambda do |x|
#     if !!x.value
#       p "add #{x.value}"
#       o << x.value
#     end
#     if x.is_a?(Fixnum)
#       o << x
#     else
#       if !!x.left
#         p 'left'
#         if x.left.is_a?(Fixnum)
#           p "add #{x.left}"
#           o << x.left
#         else
#           walk.call(x.left)
#         end
#       end
#       if !!x.right
#         p 'right'
#         if x.right.is_a?(Fixnum)
#           p "add #{x.right}"
#           o << x.right
#         else
#           walk.call(x.right)
#         end
#       end
#     end
#   end
#   walk.(node)
#   o
# end

# def tree_by_levels(node)
#   o = []
#   walk = lambda do |x|
#     return if x.nil?
#     o << x.value if !!x.value
#     if x.is_a?(Fixnum)
#       o << x
#     else
#       if !!x.left
#         x.left.is_a?(Fixnum) ? o << x.left : walk.call(x.left)
#       end
#       if !!x.right
#         x.right.is_a?(Fixnum) ? o << x.right : walk.call(x.right)
#       end
#     end
#   end
#   walk.(node)
#   o
# end

def tree_by_levels(node)
  walk = lambda do |x, o|
    return [] if x.nil?
    o << x.value if !!x.value
    o << x.left if x.left.is_a?(Fixnum) && !!x.left
    o << x.right if x.right.is_a?(Fixnum) && !!x.right
    walk.call(x.left, o) if !x.left.is_a?(Fixnum) && !!x.left
    walk.call(x.right, o) if !x.right.is_a?(Fixnum) && !!x.right
    return o
  end
  walk.(node, [])
end

n = TreeNode.new
n.value = 2
n.left = 3
n.right = 4

m = TreeNode.new
m.value = 5
m.left = 6
m.right = n

t = TreeNode.new
t.value = 5
t.left = m
t.right = n
p tree_by_levels(t)
