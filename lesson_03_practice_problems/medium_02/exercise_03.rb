# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # My string looks like this now: pumpkins
puts "My array looks like this now: #{my_array}" # My array looks like this now: ["pumpkins", "rutabaga"]

=begin
  The method tricky_method is defined with two parameters names a_string_param and an_array_param. The my_string variable is
  initialized with the string object 'pumpkins' on line 8. The my_array variable is initialized to the array object ['pumpkins'] 
  on line 9. 
  Line 10 is when the tricky_method method is invoked, passing in the variables my_string and my_array in as 
  arguments respectively. The objects that those variables reference are then assigned to the a_string_param and an_array_param 
  variables respectively. 
  On line 4, a_string_param is reassigned to the value of a_string_param with the string object 'rutabaga' appended to it. 
  Therefore, not mutating the object that my_string references which means it still has the value of 'pumpkins'. The variable 
  a_string_param now references a new string object with a value of 'pumpkinsrutabaga'. 
  Line 5 uses a mutating method to append the string object 'rutabaga' to the object that an_array_param references. Therefore, 
  this also affects the my_array variable, because they both still reference the same original object. The result of this is that both 
  an_array_param and my_array variables have the value of ['pumpkins', 'rutabaga'].
  This problem demonstrates how mutating methods differ from reassignment operations.
=end
