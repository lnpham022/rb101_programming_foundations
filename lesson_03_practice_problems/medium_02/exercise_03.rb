# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
# My string looks like this now: pumpkins
  # because a_string_param points to a different object than my_string because you use +=
# My array looks like this now: ["pumpkins", "rutabaga"]
  # because an_array_param is still pointing to the same array as my_array because you use <<
