# print_spiral
# Given a square matrix in the form of a 2D array-of-arrays, return an array consisting of the values of the array in "spiral order" (top row, then right hand side, then bottom in reverse, then up, the back again...).

def print_spiral(a)
  a = a.dup
  result = []

  while true
    break if a.length == 0 || a[0].length == 0

    # remove the first row
    result.concat(a.shift)
    break if a.length == 0 || a[0].length == 0

    # remove the right side
    a.each { |row| result << row.pop }
    break if a.length == 0 || a[0].length == 0

    # remove the bottom row

    result.concat(a.pop.reverse)
    break if a.length == 0 || a[0].length == 0

    # remove the left side
    a.reverse.each { |row| result << row.shift }
  end

  result
end
