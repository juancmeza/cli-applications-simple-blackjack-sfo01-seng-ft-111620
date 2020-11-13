require "pry"
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(10) + 1
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp 
  
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  
  first_card = deal_card
  second_card = deal_card

  display_card_total(first_card + second_card)
  first_card + second_card
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  
  case input
    when "s"
      return card_total
  
    when "h"
      return card_total + deal_card
  
    else
      invalid_command
      prompt_user
      input = get_user_input
    end
   
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  
  welcome
  card_total = initial_round
  
  until card_total > 21
    card_total = hit?(card_total)
  end
  display_card_total(card_total)
  end_game(card_total)
end
    
