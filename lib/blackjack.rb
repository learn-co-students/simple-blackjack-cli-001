def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  randNum = 1 + rand(10)
  return randNum
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1+card2
  display_card_total(sum)
  
end

def hit?(card_total)
  prompt_user
  input = get_user_input

  if input == 'h'
    newCard = deal_card
    card_total = newCard + card_total

  elsif input == 's'

  else

    invalid_command
    prompt_user
    
  end 

  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    total = display_card_total(total)
  end

  end_game(total)
end
    
