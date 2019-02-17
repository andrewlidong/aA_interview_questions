# look_and_say
# Implement the 'look and say' function. 'Look and say' takes an input array and outputs an array that describes the count of the elements in the input array as they appear in order.
#
# Example:
#
# # there is one '1' in the input array
# look_and_say([1]) == [[1, 1]]

# # there are two '1's in the input array
# look_and_say([1, 1]) == [[2, 1]]

# # there is one '2', followed by one '1' in the input array
# look_and_say([2, 1]) == [[1, 2], [1, 1]]

# # is one '1', followed by one '2', followed by 2 '1's in the input
# # array
# look_and_say([1, 2, 1, 1]) == [[1, 1], [1, 2], [2, 1]]
# Maintain a current count, maintain a current element. Push both onto new array when a different element is detected.

def look_and_say(array)
  return [] if array.empty?

  output = [[1, array[0]]]

  (1...array.length).each do |idx|
    el = array[idx]
    if el == output.last[1]
      output.last[0] += 1
    else
      output << [1, el]
    end
  end

  output
end
