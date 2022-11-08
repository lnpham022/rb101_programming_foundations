# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

frequency = {}
statement.delete(' ').chars do |c|
  frequency[c] = statement.count(c)
end

p frequency
