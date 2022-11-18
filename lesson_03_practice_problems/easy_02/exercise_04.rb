# See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."

# method 1
puts advice.match?("Dino")  # false

# method 2
puts advice.include?("Dino")  # false
