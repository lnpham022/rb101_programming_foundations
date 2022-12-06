# Study the following code and state what will be displayed...and why:

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # My string looks like this now: pumpkinsrutabaga
puts "My array looks like this now: #{my_array}" # My array looks like this now: ["pumpkins"]

=begin
  The method tricky_method_two is defined with two parameters named a_string_param and an_array_param, respectively. 
  The local variable my_string is initialized to a string object with the value of "pumpkins". The local variable my_array
  is initialized to an array object with the value of ["pumpkins"]. 
  The tricky_method_two method is invoked on line 10 with the variables my_string and my_array passed to it as arguments, 
  respectively. The objects that my_string and my_array references are then assigned to the parameter variables a_string_param
  and an_array_param, respectively. 
  On line 4, a mutative method is used to append the string 'rutabaga' to the string object 
  that a_string_param points to. Since a_string_param and my_string are still pointing to the same original object, they will 
  both have a mutated value of "pumpkinsrutabaga".
  On line 5, an_array_param is reassigned to a new array object with the value of ['pummpkins', 'rutabaga']. Since reassignment
  was performed, the original array object that an_array_param was referencing is not mutated. Therefore, my_array still points to
  the original array object with a value of ["pumpkins"].
  This problem demonstrates how mutating methods differ from reassignment operations.
=end
