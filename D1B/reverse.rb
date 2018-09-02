# reverse
# Write a function that reverses the characters in a string.
#
# Clarify if asked:
#
# You may not use the built in reverse method
# Solution should have O(n) time complexity
# Follow-up Questions:
#
# What is the time complexity of changing a character in a string?
# Note: Ruby strings, unlike JavaScript, are mutable

def reverse(str)
  chars = str.chars
  n = chars.length

  (0..(n/2)).each do |idx|
    chars[idx], chars[n - idx - 1] = chars[n - idx - 1], chars[idx]
  end

  chars.join('')
end
