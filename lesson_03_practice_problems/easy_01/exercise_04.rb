=begin
The Ruby Array class has several methods for removing items from the array. 
Two of them have very similar names. Let's see how they differ:
=end

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)  # => 2
numbers.delete(1)  # => 1

=begin
What do the following method calls do (assume we reset numbers to the original 
array between method calls)?

numbers.delete_at(1)
  delete_at method deletes the element at the specified index
  return value is the deleted element

numbers.delete(1)
  delete method deletes all items in the array that are equal to the specified object 
  return value is the last deleted object
=end
