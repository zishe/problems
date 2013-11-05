def score(dice)
  score = 0
  done_nos = []
  dice.each do |die|
    unless done_nos.include?(die)
        if dice.to_s.scan(/#{die}/).length >= 3
          score +=
            if die == 1
              1000
            else
              (100 * die.to_i)
            end
          if die == (5 || 1)
            p "fsd"
            score += ((dice.to_s.scan(/#{die}/).length - 3) *
                if die == 5
                  50
                else
                  100
                end
              )
          end
        elsif die == 1
          score += (dice.to_s.scan(/#{die}/).length * 100)
        elsif die == 5
          score += (dice.to_s.scan(/#{die}/).length * 50)
        end
      done_nos << die
    end
  end
score
end

p score([1,1,1,1])
