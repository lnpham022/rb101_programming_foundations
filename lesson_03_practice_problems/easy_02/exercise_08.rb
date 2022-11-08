# Shorten the following sentence:
advice = "Few things in life are as important as house training your pet dinosaur."

# Make the return value "Few things in life are as important as ". 
# But leave the advice variable as "house training your pet dinosaur.".
p advice.slice!(0, advice.index('house'))
p advice