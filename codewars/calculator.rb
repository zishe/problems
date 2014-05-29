class Calculator
  def evaluate(string)
    @all = string.split ' '
    return string.to_i if @all.size == 1
    @all.map!.with_index { |x, i| i.even? ? x.to_i : x }

    ["/", "*", "-", "+"].map { |x| perform x }
    @all.first.to_i
  end

  def perform op
    i = 1
    while i < @all.size
      if @all[i] == op
        @all[i] = @all[i-1].send(op.to_sym, @all[i+1])
        @all.delete_at(i-1)
        @all.delete_at(i)
      else
        i += 1
      end
    end
  end
end

p Calculator.new.evaluate("2 + 3 * 4 / 3 - 6 / 3 * 3 + 8")


class Calculator
  def do_operators(expression, ops)
    result = expression.sub(/(-?\d+) ?(#{ops}) ?(-?\d+)/) do
      $1.to_i.send($2, $3.to_i).to_s.strip
    end
    $1 ? do_operators(result, ops) : result
  end

  def evaluate(string)
    do_operators(do_operators(string, '\\*|/'), '\\+|-').to_i
  end
end

