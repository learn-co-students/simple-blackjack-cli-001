def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2 
  display_card_total(sum)
  sum
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input.upcase == "H"
    card = deal_card
    total = card + number
    total
  elsif input.upcase == "S"
    number
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
    
