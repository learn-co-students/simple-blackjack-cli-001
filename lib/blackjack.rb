$exit_signal=0

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  new_card = rand(1..11)
  puts "You were dealt #{new_card}"
  return new_card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.strip
end

def end_game(card_total)
  
  if card_total>21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  elsif card_total<21
    puts "You have ended the game with #{card_total}!"
  elsif card_total==21
    puts "Blackjack!"
    puts "Congrats! You are a big winner you got #{card_total}!"
  end
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  first_round = first_card + second_card
  display_card_total(first_round)
  return first_round
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    card_total += deal_card
  elsif user_input == "s"
    card_total
    $exit_signal = 1
    card_total
  elsif
    invalid_command
  end
end

def invalid_command
  puts "Sorry, you have chosen an invalid command, please try again."
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total >= 21
    card_total = hit?(card_total)
    display_card_total(card_total)
    if $exit_signal == 1
      break
    end
  end
    end_game(card_total)
end