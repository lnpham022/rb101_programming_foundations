# Return a new array identical in structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

p(
arr.map do |sub_arr|
  sub_arr.select { |n| n % 3 == 0}
end
)
