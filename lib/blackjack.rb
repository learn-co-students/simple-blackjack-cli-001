def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  1+rand(11)# code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  get_input=gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts"Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  card1=deal_card
  card2=deal_card
  display_card_total(card1+card2)
  card1+card2
  # code #initial_round here
end

def hit?(card_total)
  puts "Type 'h' to hit or 's' to stay"
  input_value=get_user_input
  if input_value=='s'
    elsif input_value=='h'
    card_total=card_total+deal_card # code hit? here
  else invalid_command
  end
card_total
end

def invalid_command
  puts "Invalid_command!"
  hit?(card_total)# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum=initial_round
  until sum>21 do
    sum=hit?(sum)
    display_card_total(sum)

  end
  end_game(sum)# code runner here
end
    
