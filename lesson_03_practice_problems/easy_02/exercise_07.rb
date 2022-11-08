# In the previous practice problem we added Dino to our array like this:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the family.
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.concat(%w(Dino Hoppy))
p flintstones