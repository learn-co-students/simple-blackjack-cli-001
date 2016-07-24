def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  string = gets.chomp
end

def end_game(num)
  # code #end_game here
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  total = 0

  2.times do
    total += deal_card
  end
    display_card_total(total)
    total

end

def hit?(value)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    value += deal_card
  end
  value
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  count = initial_round

  until count > 21 do
    count = hit?(count)
    display_card_total(count)
  end

  end_game(count)


end
