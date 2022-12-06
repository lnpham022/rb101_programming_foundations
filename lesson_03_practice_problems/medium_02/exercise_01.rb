# Take a look at the following code and predict the output:

a = "forty two"
b = "forty two"
c = a

puts a.object_id # unique id
puts b.object_id # unique id
puts c.object_id # same as a 

=begin
  Both local variables are initialized with the string object 'forty two'. Although both string objects have the same value, 
  their object ids will be different. This is because both objects take up a different space in memory. This means the two local 
  variables reference two different objects that have the same value. Variable c will have the same object id as variable a, 
  because it is initialized to the same object that variable a references. 
=end
