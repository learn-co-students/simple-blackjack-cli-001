def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1...11)
end

def display_card_total(card_total)

  puts "Your cards add up to #{card_total}"

  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
 gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round()
 deal_one = deal_card
 deal_two = deal_card
 deal_total = deal_one + deal_two

 display_card_total(deal_total)
 
 return deal_total
 
  # code #initial_round here
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
 if answer.include? 'h'
    card_total += deal_card
  elsif answer.include? 's'
    card_total
  else
    invalid_command
  end
  card_total    
end

def invalid_command
  "This is an invalid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
   until sum > 21 do
    sum = hit?(sum)
    display_card_total(sum)
    #sum += sum
  end
    end_game(sum)
end
    
runner