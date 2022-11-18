# Shorten the following sentence:
advice = "Few things in life are as important as house training your pet dinosaur."

# Make the return value "Few things in life are as important as ". 
# But leave the advice variable as "house training your pet dinosaur.".
puts advice.slice!(0, advice.index('house'))  # Few things in life are as important as (deleted string)
puts advice                                   # house training your pet dinosaur.

# As a bonus, what happens if you use the String#slice method instead?
puts advice.slice(0, advice.index('house'))  # Few things in life are as important as (new string w/ same text)
puts advice                                  # Few things in life are as important as house training your pet dinosaur.
