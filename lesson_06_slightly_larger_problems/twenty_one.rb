# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

# not finished!!!

SUITS = ['S', 'C', 'D', 'H']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(message)
 puts "#{message}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }
  
  total = 0
  values.each do |v|
    if v == 'A'
      total += 11
    elsif v.to_i == 0
      total += 10
    else
      total += v.to_i
    end
  end

  # correct for aces
  values.select { |value| value == 'A'}.count.times do
    total -= 10 if total > 21
  end
  
  total
end

def rename(card)
  if card == 'J'
    card = 'Jack'
  elsif card == 'Q'
    card = 'Queen'
  elsif card == 'K'
    card = 'King'
  elsif card == 'A'
    card = 'Ace'
  end
  card
end

def bust?(card)
  total(card) > 21
end

# main loop
loop do
  deck = initialize_deck

  #initial deal
  player = []
  dealer = []

  2.times do 
  player << deck.pop
  dealer << deck.pop
  end

  prompt "Dealer has: #{rename(dealer[0][1])} and unknown card"
  prompt "You have: #{rename(player[0][1])} and #{rename(player[1][1])}, for a total of #{total(player)}" 

  # player turn
  prompt "-------------------------------------------------------------------------------------------------"
  prompt "Players turn ..."
  loop do
    prompt "Would you like to hit or stay? (h or s)"
    answer = gets.chomp.downcase
    if answer.start_with?('h')
      player << deck.pop
    else
      prompt "Invalid option. Please choose: h or s."
    end
    puts total(player)

    if bust?(total(player))
      # display winner
    end

    break if answer.start_with?('s')
  end

  # dealer turn


  # total(player)
  # total(dealer)
  break
end
