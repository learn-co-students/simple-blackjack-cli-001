def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  card=rand(1..11)
  puts "Your new card is #{card}"
  card # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  card_total = deal_card 
  card_total=card_total+deal_card
  display_card_total(card_total)
  card_total# code #initial_round here
end

def hit?(current_total)
  prompt_user
user_input = get_user_input
  if user_input == "h"
  current_total=current_total+deal_card
  display_card_total(current_total)
current_total
elsif user_input=="s"
  current_total
else
invalid_command
prompt_user
current_total
end# code hit? here
end

def invalid_command
  puts "please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum_cards=initial_round
  until sum_cards >21 do 
    sum_cards = hit?(sum_cards)
  end
  end_game(sum_cards)
end

    
