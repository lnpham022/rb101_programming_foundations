MOVES = {
  'rock' => { abbreviation: 'r', beats: ['scissors', 'lizard'] },
  'lizard' => { abbreviation: 'l', beats: ['spock,', 'paper'] },
  'spock' => { abbreviation: 'sp', beats: ['scissors', 'rock'] },
  'paper' => { abbreviation: 'p', beats: ['spock', 'rock'] },
  'scissors' => { abbreviation: 'sc', beats: ['paper', 'lizard'] }
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  MOVES[first][:beats].include?(second)
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

def valid_choice?(choice)
  MOVES.keys.include?(choice) || MOVES.map { |_, v| v[:abbreviation] }.include?(choice)
end

def player_choice(choice)
  MOVES.keys.select { |key| key.start_with?(choice) }[0]
end

system("clear")

name = ''
loop do
  prompt("Please enter your name.")
  name = gets.chomp.strip.capitalize

  if name.empty?
    system("clear")
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
  scores = { computer: 0, player: 0 }

  loop do # match rounds
    loop do
      puts(operator_prompt)
      choice = gets.chomp.downcase

      if valid_choice?(choice)
        choice = player_choice(choice)
        break
      else
        system("clear")
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = MOVES.keys.sample

    system("clear")

    prompt("#{name} chose: #{choice}; Computer chose: #{computer_choice}.")
    display_results(choice, computer_choice, name)

    if win?(choice, computer_choice)
      scores[:player] += 1
    elsif win?(computer_choice, choice)
      scores[:computer] += 1
    end

    prompt("#{name}: #{scores[:player]}. Computer: #{scores[:computer]}.")

    match_winner(scores[:player], scores[:computer], name)

    break if scores[:player] == 3 || scores[:computer] == 3
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
