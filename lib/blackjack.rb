def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1 + rand(10) 
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
    gets.chomp
end

def end_game(game_total)
  # code #end_game here
  puts "Sorry, you hit #{game_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  2.times do deal_card
  return total
end
  end


def hit?(dongs)
  # code hit? here
  prompt_user
case get_user_input
  when "h"
    deal_card + dongs
  when "s"
   prompt_user
  else
    invalid_command
end
dongs
end


def invalid_command
  # code invalid_command here
  puts "Sorry, I don't understand."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
end