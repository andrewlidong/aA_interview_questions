# sum_from_file
# Write a method that reads a file of integers, and sums them. Each integer is on a newline and some begin with "#". Skip those.

def sum_from_file(filename)
  nums = File.readlines(filename).select { |line| line[0] != '#' }.map(&:to_i)

  nums.inject(:+)
end
