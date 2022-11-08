# In this hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present.

# method 1
p ages.key?("Spot")

# method 2
p ages.include?("Spot")

# method 3
p ages.member?("Spot")
