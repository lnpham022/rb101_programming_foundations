# Return a new array containing the same sub-arrays as the original but ordered logically by only taking into consideration the odd numbers they contain.

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

p(
arr.sort_by do |sub_arr|
  sub_arr.select { |num| num.odd? }
end
)
