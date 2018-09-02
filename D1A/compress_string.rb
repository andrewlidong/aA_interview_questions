# compress string
# Write a function that takes a string and compress it.
#
# Examples:
#
# compress("aaa") # => "a3"
# compress("abbccc") # => "ab2c3"
# Clarify if asked:
#
# Case matters. (ex. "aa" => "a2", "aA" => "aA")
# Do not compress a character if there is only one in a row
# Tips:
#
# How can you change a string into an integer?

def compress(str)
  char_counts = []
  current_char = ""
  current_count = 0

  str.each_char do |char|
    if char == current_char
      current_char += 1
    else
      char_counts << [current_char, current_count] if current_count
      current_char = char
      current_count = 1
    end

    char_counts << [current_char, current_count] if current_count

    char_counts.map { |(char, count)| count < 2 ? char : char + count.to_s }.join('')
  end
