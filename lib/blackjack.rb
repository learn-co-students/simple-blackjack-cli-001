def welcome
 puts "Welcome to the Blackjack Table"  
end

def deal_card
  card = rand(1..11)
end

def display_card_total(total)
   
  puts "Your cards add up to #{total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  
end

def get_user_input
  choice = gets.chomp 
end

def end_game(endTotal)
  puts "Sorry, you hit #{endTotal}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  cards = card1 + card2
  display_card_total(cards)
  return cards 
end

def hit?(this)
  prompt_user 
  answer = get_user_input
  if answer == "h"
    this += deal_card
  
end 
  return this 
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  cards = initial_round
  until cards > 21 
   
    hit?(cards)
    
    cards += deal_card

end 
display_card_total(cards)
end_game(cards)
  

end     
