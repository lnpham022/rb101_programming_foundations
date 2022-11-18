require 'rubocop'

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

def display_results(player, computer, name)
  if win?(player, computer)
    prompt("#{name} won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def match_winner(player, computer, name)
  if player == 3
    prompt("#{name} wins the match!")
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

system("clear")

name = ''
loop do
  prompt("Please enter your name.")
  name = gets.chomp.capitalize

  if name.empty?
    prompt("Please enter a valid name.")
  else
    break
  end
end

operator_prompt = <<-MSG
=> Choose one: 
  r  - rock
  p  - paper
  sc - scissors
  l  - lizard
  sp - spock
  MSG

loop do # main loop
  system("clear")
  prompt("Hello, #{name}!")
  prompt("Welcome to the game of Rock, Paper, Scissors, Lizard, and Spock!")
  prompt("Each match will continue until you or the computer scores 3 points.")

  choice = ''
  computer_score = 0
  player_score = 0

  loop do # match rounds
    loop do
      puts(operator_prompt)
      choice = gets.chomp.downcase
      if VALID_CHOICES.include?(choice)
        break
      elsif simple_choices(choice)
        choice = simple_choices(choice)
        break
      else
        system("clear")
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    system("clear")

    prompt("#{name} chose: #{choice}; Computer chose: #{computer_choice}.")
    display_results(choice, computer_choice, name)

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    prompt("#{name}: #{player_score}. Computer: #{computer_score}.")

    match_winner(player_score, computer_score, name)

    break if player_score == 3 || computer_score == 3
  end

  prompt("Do you want to play again?")

  answer = ''
  loop do
    prompt("Please enter (y)es or (n)o.")
    answer = gets.chomp.downcase

    break if answer.start_with?('n') || answer.start_with?('y')
  end

  break if answer.start_with?('n')
end

prompt("Thank you for playing. Good bye, #{name}!")
