def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(total) #cannot hard code total
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp

end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  deal_one = deal_card
  deal_two = deal_card

  deal_total = deal_one + deal_two

  puts "Your cards add up to #{deal_total}"

  @deal_total = deal_total
end

def hit?(total)
  prompt_user
  answer = get_user_input
  if answer.include?('h')
    total += deal_card
  elsif answer.include?('s')
    total
  else
    invalid_command
  end
  total
end

def invalid_command
  "This is an invalid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  until @deal_total > 21
    @deal_total = hit?(@deal_total)
    display_card_total(@deal_total)
  end
  end_game(@deal_total)
end
    
