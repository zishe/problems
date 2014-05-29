# def calc(expr)
#   return 0 if expr.empty?
#   operands = []
#   evaluation = []
#   expr.split.each do |x|
#     case x
#       when /\d/
#         evaluation.push(x.to_f)
#       when "-", "/", "*", "+", "**"
#         operands = evaluation.pop(2)
#         evaluation.push(operands[0].send(x, operands[1]))
#     end
#   end
#   evaluation.last
# end

def calc(expr)
  return 0 if expr.empty?
  expr.split(' ').inject([]) { |a, i|
    a << (i =~ /\d+/ ? i.to_i : a.pop(2)[0].send(i, a.pop(2)[1]))
  }.pop
end



# p calc("5 1 2 + 4 * + 3 -")
p calc("1 2 3")

