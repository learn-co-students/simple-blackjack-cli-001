def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(the_card_total)
  puts "Your cards add up to #{the_card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(i)
  puts "Sorry, you hit #{i}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  print display_card_total(total)
  return total  
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    current_card_total += deal_card
  elsif user_input == "s"
    current_card_total
  else
    invalid_command
  end
end 

def invalid_command

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21 
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
