require 'pry'

MAX_VALUE = 21
DEALER_MIN_VALUE = 17

CARD_VALUES = {
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "10" => 10,
  "J" => 10,
  "Q" => 10,
  "K" => 10,
  "A" => [1, 11]
}

def prompt(message)
  puts "=> #{message}"
end

def select_card_from_deck(cards)
  available_cards = cards.select { |_, value| value > 0 }
  selected_card = available_cards.keys.sample

  cards[selected_card] -= 1
  selected_card
end

def initialize_player_cards(cards)
  player_cards = []
  2.times do
    player_cards << select_card_from_deck(cards)
  end
  player_cards
end

def initialize_dealer_cards(cards)
  dealer_cards = []
  2.times do
    dealer_cards << select_card_from_deck(cards)
  end
  dealer_cards
end

def show_or_hide_card(card, show)
  if show
    card
  else
    "?"
  end
end

def display_card(card)
  card.center(5)
end

def display_base_cards(dealed_cards, show_second=true)
  first_card = display_card(dealed_cards[0])
  second_card = display_card(show_or_hide_card(dealed_cards[1], show_second))

  puts ""
  puts "*************"
  puts "------------"
  puts "|     |     |"
  puts "|#{first_card}|#{second_card}|"
  puts "|     |     |"
  puts "------------"
  puts "*************"
  puts ""
end

def sum_values_of_cards(cards, scores, player)
  cards_values = cards.map do |card|
    if card != "A"
      CARD_VALUES[card]
    else
      decide_1_or_11(scores, player)
    end
  end
  cards_values.sum
end

def update_score(cards, participant, scores)
  if participant == "player"
    scores[participant.to_sym] = sum_values_of_cards(cards, scores, "player")
  elsif participant == "dealer"
    scores[participant.to_sym] = sum_values_of_cards(cards, scores, "dealer")
  end
end

def hit(player_or_dealer_cards, cards)
  player_or_dealer_cards << select_card_from_deck(cards)
end

def decide_1_or_11(scores, player)
  participant = player.to_sym

  if (MAX_VALUE - scores[participant]) >= 11
    11
  else
    1
  end
end

def winner(scores)
  if scores.values.first != scores.values.last
    scores.key(scores.values.select { |score| score < MAX_VALUE }.max).to_s
  else
    "tie"
  end
end

# begin gameplay

end_scores = { player: 0, dealer: 0 }

loop do
  cards = CARD_VALUES.keys.map { |card| [card, 4] }.to_h
  scores = { player: 0, dealer: 0 }

  puts ""
  prompt "Hi! Welcome to the 21 game!"

  player_cards = initialize_player_cards(cards)
  update_score(player_cards, "player", scores)
  display_base_cards(player_cards)

  prompt "Your score is #{scores[:player]}"

  prompt "Dealing dealer's cards ..."
  dealer_cards = initialize_dealer_cards(cards)
  display_base_cards(dealer_cards, false)

  # game play player
  loop do
    puts "Do you want to hit or stay? (h or s)"
    action = gets.chomp

    if action == "h"
      hit(player_cards, cards)
      puts "Your extra card(s): #{player_cards[2..-1].join(', ')}"
      update_score(player_cards, "player", scores)
      puts "Your total score is now:#{scores[:player]}"
      
      if scores[:player] > MAX_VALUE
        puts "You lost! Dealer wins!"
        puts "Thanks for playing!"
        end_scores[:dealer] += 1
        break
      end
    elsif action == "s"
      break
    end
  end

  # game play dealer
  if scores[:player] < MAX_VALUE
    loop do
      puts "Dealer has following cards:"
      display_base_cards(dealer_cards, true)
      update_score(dealer_cards, "dealer", scores)
      puts "Dealer's score: #{scores[:dealer]}"
      puts "Dealer is deciding what to do ..."
      while scores[:dealer] < DEALER_MIN_VALUE
        hit(dealer_cards, cards)
        puts "Dealer took a card. Card(s) are now:
              #{dealer_cards[2..-1].join(', ')}"
        p scores.inspect
        update_score(dealer_cards, "dealer", scores)
        puts "Dealer's score: #{scores[:dealer]}"
        if scores[:dealer] > MAX_VALUE
          puts "You win! Dealer busted!"
          end_scores[:player] += 1
          break
        end
      end
      if winner(scores) == "tie"
        puts "It's a tie!"
      else
        winner = winner(scores)
        puts "#{winner.capitalize} won!"
        end_scores[winner.to_sym] += 1
      end
      break
    end
  end

  p end_scores.inspect

  if end_scores.values.any? { |score| score > 4 }
    puts "The game has ended!"
    end_winner = end_scores.key(end_scores.values.max).to_s.capitalize
    puts "#{end_winner} won!"
    break
  end

  puts "Do you want to play again? (y)"
  play_again = gets.chomp

  break if play_again != "y"
end
