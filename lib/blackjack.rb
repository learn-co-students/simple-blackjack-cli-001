def welcome
   # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  num = rand(1..11)
  num
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
 first = deal_card
 second = deal_card
 card_total = first + second
 display_card_total(card_total)
 card_total
end

def hit?(card_total)
  case get_user_input
  when "s"
    prompt_user
  when "h"
    card_total+= deal_card
    puts "#{card_total}"
  else
    invalid_command
  end
  card_total 
end
    

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  until card_total > 21
    welcome
    initial_round
    hit?
    display_card_total
  end
    end_game
end
    
