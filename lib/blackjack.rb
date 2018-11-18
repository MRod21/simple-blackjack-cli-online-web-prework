def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
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
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card 
  display_card_total(sum)
  return sum
end

def hit?(number_current)
  prompt_user
  get_user_input
  until get_user_input == "h" || get_user_input == "s"
    invalid_command
    prompt_user
    get_user_input
  end
  if get_user_input == "h"
    number_current += deal_card
    elsif get_user_input == "s"
    return number_current
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
