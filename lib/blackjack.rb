def welcome
  puts "Welcome to the Blackjack Table"
end


def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game (final_card_total)
  puts "Sorry, you hit #{final_card_total}. Thanks for playing!"
end

def deal_card
    1 + rand(11)
end

def initial_round
    first_card = deal_card
    second_card = deal_card
    initial_sum = first_card + second_card
    display_card_total(initial_sum)
    initial_sum
end

def hit?(card_total)
  prompt_user
  x = get_user_input
  if x == "h"
    new_card = deal_card
    card_total = card_total + new_card
  elsif x == "s"
  else
    invalid_command
    hit?(card_total)
  end
  card_total
end

def invalid_command
  puts "Invalid input.  Please try again"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
  until card_sum > 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
    card_sum
  end
end_game(card_sum)
end

