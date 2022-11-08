# Write your own version of the rails titleize implementation.

words = "the flintstones rock"

puts words.split.each { |word| word.capitalize! }.join(' ')
