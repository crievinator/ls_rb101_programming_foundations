def decide_1_or_11(score, player)
  if player == "player"
    if score > 10
       11
    else
       1
    end
  elsif player == "dealer"
    if score < 10
      return 11
    else
      return 1
    end
  end
end

p decide_1_or_11(5, "player")
p decide_1_or_11(5, "dealer")