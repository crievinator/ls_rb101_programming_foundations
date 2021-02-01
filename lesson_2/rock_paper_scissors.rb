VALID_CHOICES = %w[paper rock scissors lizard spock]

def test_method
  prompt('test message')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'spock' && second == 'scissors')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

def translate_choice(abr)
  case abr
  when 'p' then 'paper'
  when 'r' then 'rock'
  when 's' then 'scissors'
  when 'l' then 'lizard'
  when 'sp' then 'spock'
  end
end

def update_players_score(player, computer, players_scores, player_wins, computer_wins)
  if win?(player, computer)
    players_scores[:player] += 1
    p player_wins += 1
  elsif win?(computer, player)
    players_scores[:computer] += 1
    p computer_wins += 1
  end
end

players_scores = Hash.new(0)
player_wins = 0
computer_wins = 0
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} by typing p, r, s, l or sp")
    abreviated_choice = Kernel.gets.chomp
    choice = translate_choice(abreviated_choice)

    break if VALID_CHOICES.include?(choice)

    prompt("That's not a valid choice.")
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)
  update_players_score(choice, computer_choice, players_scores, player_wins, computer_wins)

  prompt('----------')
  prompt("Your score: #{players_scores[:player]}")
  prompt("Computer's score: #{players_scores[:computer]}")
  prompt("player win via local variable: #{player_wins}")
  prompt("computer win via local variable: #{computer_wins}")
  prompt('----------')

  if players_scores[:player] == 5
    prompt('You\'ve fucking won, congrats!!!!')
    exit
  elsif players_scores[:computer] == 5
    prompt('Computer has won ...')
    exit
  end

  prompt('Play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing, Good bye!')
