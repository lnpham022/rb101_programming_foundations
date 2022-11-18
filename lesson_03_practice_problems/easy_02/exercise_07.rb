# In the previous practice problem we added Dino to our array like this:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# method 1
flintstones.push("Dino").push("Hoppy")

# method 2
flintstones.concat(%w(Dino Hoppy))

p flintstones  # ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles", "Dino", "Hoppy"]
