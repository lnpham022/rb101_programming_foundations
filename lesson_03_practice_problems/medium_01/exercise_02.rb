# The result of the following statement will be an error:
  # puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?
  # you must convert the integers into a string before adding it to the end of another string

  # method 1
  puts "the value of 40 + 2 is " + (40 + 2).to_s

  # method 2
  puts "the value of 40 + 2 is #{(40 + 2)}"
