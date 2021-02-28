def alternate_player(current_player)
  switch_players = {'computer' => 'player', 'player' => 'computer'}
  switch_players[current_player]
end


p alternate_player('computer')
p alternate_player('player')