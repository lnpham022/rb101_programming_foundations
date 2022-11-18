# Starting with the string:
# Show two different ways to put the expected "Four score and " in front of it.

# method 1
famous_words = "seven years ago..."
famous_words.prepend("Four score and ")

puts famous_words  # Four score and seven years ago...

# method 2
famous_words = "seven years ago..."
famous_words = "Four score and " + famous_words

puts famous_words  # Four score and seven years ago...
