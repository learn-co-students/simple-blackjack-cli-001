def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"  
end

def initial_round
  
  a = deal_card
  b = deal_card
  
  display_card_total(a+b)
  
  a+b

end

def hit?(result)
  
  prompt_user
  answer = get_user_input
   
  if answer == 'h' 
    result + deal_card
  elsif answer == 's'
    result
  else
    invalid_command
    hit?(result)
  end

end

def invalid_command
  puts "You should choose just 'h' or 's'"
end

def runner

  welcome
  result = initial_round
  
  while result <= 21 do
    result = hit?(result)
    display_card_total(result)
  end
  
  end_game(result)

end
