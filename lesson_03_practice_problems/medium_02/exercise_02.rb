# Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id # same as b and c
puts b.object_id # same as a and c
puts c.object_id # same as a and b
# this happens because integers are immutable; just like booleans