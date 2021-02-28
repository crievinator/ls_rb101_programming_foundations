require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
FINAL_WINS = 2
FIRST_MOVE = 'computer'

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}, Computer is #{COMPUTER_MARKER}"
  puts "This will be your playing field ..." 
  puts "#{FIRST_MOVE.capitalize} may start ..." unless FIRST_MOVE == 'choose' 
  puts ""
  puts "     |     |"
  puts " #{brd[1]}   |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----------------"
  puts "     |     |"
  puts " #{brd[4]}   |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----------------"
  puts "     |     |"
  puts " #{brd[7]}   |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop: enable Metrics/AbcSize

def joinor(array, delimiter=", ", last_word="or")
  last_element = array.last.to_s
  first_part = array[0..-2].join(delimiter)
  last_word = ' ' + last_word + ' '

  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{last_word} ")
  else 
  result = first_part + last_word + last_element
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def immediate_threat?(brd)
  !!detect_threat(brd)
end

def detect_threat(brd)
  WINNING_LINES.each do |line|
    values = [brd[line[0]], brd[line[1]], brd[line[2]]]
    if values.count(PLAYER_MARKER) == 2 && !values.include?(COMPUTER_MARKER)
      return line.select { |position| brd[position] != PLAYER_MARKER }.first
    else      
    end
  end
  nil
end

def opportunity?(brd)
  !!detect_opportunity(brd)
end

def detect_opportunity(brd)
  WINNING_LINES.each do |line|
    values = [brd[line[0]], brd[line[1]], brd[line[2]]]
    if values.count(COMPUTER_MARKER) == 2 && !values.include?(PLAYER_MARKER)
      return line.select { |position| brd[position] != COMPUTER_MARKER }.first
    else      
    end
  end
  nil
end

def computer_places_piece!(brd)
  if opportunity?(brd)
    brd[detect_opportunity(brd)] = COMPUTER_MARKER
  elsif immediate_threat?(brd)
    brd[detect_threat(brd)] = COMPUTER_MARKER
  elsif brd[5] == " "
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_scores(scores, brd)
  if detect_winner(brd) == 'Player'
    scores[:player] += 1
  elsif detect_winner(brd) == 'Computer'
    scores[:computer] += 1 
  end 
end

def place_piece!(brd, current_player)
  if current_player == 'player'
    player_places_piece!(brd)
  elsif current_player == 'computer'
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  switch_players = {'computer' => 'player', 'player' => 'computer'}
  switch_players[current_player]
end

def play(board, current_player)
  loop do
    display_board(board)

    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end
end

# GAME PLAY STARTS HERE

scores = {player: 0, computer: 0}

loop do
  board = initialize_board

  case FIRST_MOVE
  when 'player'
    current_player = 'player'
    play(board, current_player)
  when 'computer'
    current_player = 'computer'
    play(board, current_player)
  when 'choose' 
    first_move = ''
    loop do 
      possible_answers = ['computer', 'player']
      prompt "Who can start? (computer or player)"
      first_move = gets.chomp
      break if possible_answers.include?(first_move)
      prompt "!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      prompt "That's doens't seem correct!"
      prompt "!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
      prompt " "
    end
    if first_move == 'player'
      current_player = 'player'
      play(board, current_player)
    elsif first_move == 'computer'
      current_player = 'computer'
      play(board, current_player)
    end
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won this round"
    update_scores(scores, board)
    p scores.inspect
  else
    prompt "It's a tie!"
    p scores.inspect
  end

  if scores.values.include?(FINAL_WINS)
    prompt "Game has ended!"
    end_winner = scores.key(FINAL_WINS).to_s
    prompt "#{end_winner.capitalize} has won with #{FINAL_WINS} final wins!!"
    break 
  end

  prompt "Play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing."
