VALID_CHOICES = %w[paper rock scissors lizard spock]
WINNING_COMBINATIONS = {
  'rock' => %w[scissors lizard],
  'paper' => %w[spock rock],
  'scissors' => %w[paper lizard],
  'lizard' => %w[paper spock],
  'spock' => %w[rock scissors]
}

# method to output program messages with a '=>'
def prompt(message)
  Kernel.puts("=> #{message}")
end

# determine in combination (first vs. second) if first has one
def win?(first, second)
  WINNING_COMBINATIONS[first].include?(second)
end

# display which player has won
def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

# translate abbreviation to full name from VALID_CHOICES constant
def translate_choice(abr)
  case abr
  when 'p' then 'paper'
  when 'r' then 'rock'
  when 's' then 'scissors'
  when 'l' then 'lizard'
  when 'sp' then 'spock'
  end
end

# update the player's scores in a hash
def update_players_score(player, computer, players_scores)
  if win?(player, computer)
    players_scores[:player] += 1
  elsif win?(computer, player)
    players_scores[:computer] += 1
  end
end

players_scores = Hash.new(0)

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} by typing p, r, s, l or sp")

    # convert abbreviation to full string and check if it's valid input
    abreviated_choice = Kernel.gets.chomp
    choice = translate_choice(abreviated_choice)
    break if VALID_CHOICES.include?(choice)

    prompt("That's not a valid choice.")
  end
  computer_choice = VALID_CHOICES.sample

  # check both choices and who has won. Update player score.
  prompt("You chose #{choice}, computer chose: #{computer_choice}")
  display_results(choice, computer_choice)
  update_players_score(choice, computer_choice, players_scores)

  prompt('----------')
  prompt("Your score: #{players_scores[:player]}")
  prompt("Computer's score: #{players_scores[:computer]}")
  prompt('----------')

  # determine if program should be exited
  if players_scores[:player] == 5
    prompt('You\'ve won, congrats!!!!')
    exit
  elsif players_scores[:computer] == 5
    prompt('Computer has won ...')
    exit
  end

  # ask user to play again. If 'Y' or 'y' proceed, else exit.
  prompt('Play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing, Good bye!')
