require 'rubocop'
require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)

WIN_COMBOS = { 'rock' => ['scissors', 'lizard'],
               'paper' => ['rock', 'spock'],
               'scissors' => ['paper', 'lizard'],
               'lizard' => ['paper', 'spock'],
               'spock' => ['scissors', 'rock'] }

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WIN_COMBOS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def match_winner(player, computer)
  if player == 3
    prompt("Player wins the match!")
  elsif computer == 3
    prompt("Computer wins the match!")
  end
end

def simple_choices(choice)
  case choice
  when 'p' then 'paper'
  when 'r' then 'rock'
  when 'sc' then 'scissors'
  when 'sp' then 'spock'
  when 'l' then 'lizard'
  end
end

loop do # main loop
  choice = ''
  computer_score = 0
  player_score = 0

  loop do # match rounds
    loop do
      prompt("Choose one: (r)ock, (p)aper, (sc)issors, (l)izard, (sp)ock")
      choice = gets.chomp
      if VALID_CHOICES.include?(choice)
        break
      elsif simple_choices(choice)
        choice = simple_choices(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")
    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    prompt("Player: #{player_score}. Computer: #{computer_score}.")

    match_winner(player_score, computer_score)

    break if player_score == 3 || computer_score == 3
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
