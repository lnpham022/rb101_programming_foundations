# Return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p(
arr.map do |sub_arr|
  sub_arr.sort {|a, b| b <=> a}
end
)
