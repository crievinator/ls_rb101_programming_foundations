require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
PLAYER_MARKER = 'X'

def immediate_threat?(brd)
  WINNING_LINES.each do |line|
    values = [brd[line[0]], brd[line[1]], brd[line[2]]]
    if values.count(PLAYER_MARKER) == 2
      return true
    else      
    end
  end
  false
end

new_board = {}
(1..9).each { |num| new_board[num] = " " }
p new_board
new_board[1] = "X"
new_board[9] = "X"
p new_board


p imediate_threat?(new_board)