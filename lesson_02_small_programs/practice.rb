=begin
PROBLEM:
build a mortgage calculator
  - information you need
    - loan amount
      - remove commas
    - annual percentage rate (APR)
      - float / 100
    - loan duration (months)

  - you'll need to calculate...
    - monthly interest rate
    - loan duration in months
    - monthly payment

  - formula
    - m = p * (j / (1 - (1 + j)**(-n)))
    - monthly_payment = loan_amount *
                        (monthly_interest_rate /
                        (1 - (1 + monthly_interest_rate)**(-loan_duration)))
      - m = monthly payment (result)
      - p = loan amount (given)
      - j = monthly interest rate = APR / 12
      - n = loan duration in months (given)

  INPUT:
  OUTPUT:

EXAMPLES:
  GOAL:

DATA:

ALGORITHM:
  1. Get loan amount, annual percentage rate, and loan duration from user
  2. Calculate monthly interest rate
  3. Calculate monthly payments

=end

require 'rubocop'

def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to the Mortgage Calculator!")

loop do # main loop
  prompt("Please enter the amount of your loan.")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp.delete(',')

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  prompt("Please enter your Annual Percentage Rate (APR)")
  prompt("Example: 5 for 5% or 2.5 for 2.5%")

  apr = ''
  loop do
    apr = gets.chomp

    if apr.empty? || apr.to_f < 0 || apr.to_f > 100
      prompt("Please enter a valid APR. (1 - 100)")
    else
      break
    end
  end

  prompt("Please enter your loan duration in months.")

  loan_duration = ''
  loop do
    loan_duration = gets.chomp

    if loan_duration.empty? || loan_duration.to_i <= 0
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  monthly_interest_rate = (apr.to_f / 100) / 12

  monthly_payment = loan_amount.to_i *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-loan_duration.to_i)))

  prompt("Your monthly payment is $#{monthly_payment.round(2)}.")

  prompt("Would you like to make another calculation?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
