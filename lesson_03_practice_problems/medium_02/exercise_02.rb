# Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id # same as b and c
puts b.object_id # same as a and c
puts c.object_id # same as a and b
# this happens because integers are immutable; just like booleans

=begin
  Variables a, b, and c all have the same object id. This is because integers are immutable, which means that the values 
  can't be mutated. Any operation performed on an integer will return a new integer. Therefore, all numbers only have one object id.
  This means that variables a, b, and c all point to the same integer object with the value of 42.
=end
