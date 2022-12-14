# Alyssa was asked to write an implementation of a rolling buffer. 
  # Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". 
# Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer # returns mutated array
end
# rolling_buffer1 changes the input array "buffer" after each implementation (mutating)

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer # returns new array item
end
# rolling_buffer2 doesn't change the input array after each implementation (non-mutating)
