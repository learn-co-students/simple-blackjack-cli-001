def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card(player="You")
  new_card = rand(1..11)
  puts "#{player} drew a #{new_card}"
  new_card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "\nSorry, you busted with #{card_total}. Thanks for playing!"
end

def initial_round
  puts "\n*** Your turn ***"
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(num)
  card_total = num
  prompt_user
  user_choice = get_user_input
    
  if user_choice == "h"
    card_total += deal_card
    display_card_total(card_total)
  elsif user_choice == "s"
    return nil
  else
    invalid_command
  end
  
  card_total
end

def dealer_start
  puts "\n*** Dealer's turn ***"
end

def dealer_turn(num)
  dealer_start
  
  dealer = "Dealer"
  card_total = deal_card(dealer) + deal_card(dealer)
  
  while card_total < num
    card_total += deal_card(dealer)
  end
  puts "Dealer's cards add up to #{card_total}"
  
  card_total
end

def display_winner(player_total, dealer_total)
  
  if player_total > 21
    puts "\nSorry, you bust. Dealer wins this round :("
  elsif dealer_total > 21
    puts "Dealer busts, you win!"
  elsif player_total > dealer_total
    puts "\nNice! You beat the dealer!"
  elsif player_total == dealer_total
    puts "\nIt's a push, how boring..."
  else
    puts "\nOoh, sorry, you lose this round :("
  end
end

def quit?
  puts "\nWould you like to play again? Type 'y' for yes or anything else to quit"
  if gets.chomp != "y"
    true
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  
  loop do
    player_total = initial_round
    dealer_total = 0
    
    until player_total > 21
      new_total = hit?(player_total)
      
      if new_total
        player_total = new_total
      else
        dealer_total = dealer_turn(player_total)
        break
      end
    end
    display_winner(player_total, dealer_total)
    
    if quit?
      break
    end
  end
end
