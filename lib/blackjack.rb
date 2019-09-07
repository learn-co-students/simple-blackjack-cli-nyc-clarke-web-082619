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
  tot = deal_card + deal_card
 display_card_total(tot)
 return tot
end

def hit?(num)
  prompt_user
  user_input = get_user_input

  until user_input == 'h' || user_input == 's'
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input == "h"
    num += deal_card
  end
  num
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  until num > 21
   num = hit?(num)
   display_card_total(num)
  end
end_game(num)
end
    
