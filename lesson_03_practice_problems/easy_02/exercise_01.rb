# In this hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# See if "Spot" is present.

# method 1
p ages.key?("Spot")  # false

# method 2
p ages.include?("Spot")  # false

# method 3
p ages.member?("Spot")  # false
