# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. 
# A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, he got an error. 
# Something about the limit variable. What's wrong with the code?
  # The limit variable was defined outside of the method definition.
  # Therefore, the variable is not within the scope of the method, resulting in an error.
  # The method fib does not have access to local variables outside of its method definition.
  # FIX: Add an additional parameter to the method definition. 
    # Then pass in the variable limit as an argument when the method fib is invoked. 

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"
