def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(10)
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card = card1 + card2
  display_card_total(card)
  card
end

def hit?(card)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    card3 = deal_card
    total = card + card3
    total
  elsif user_input == "s"
    card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  total = initial_round
  until total > 21 do
    total = hit?(total)
  end
  display_card_total(total)
  end_game(total)
end
    
