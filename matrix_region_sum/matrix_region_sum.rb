# matrix_region_sum
# Given a matrix of integers and the top left and bottom right coordinates of a rectangular region within the matrix, find the sum of numbers falling inside the rectangle.
#
# Example:
#
# # matrix
# 1 2 3 4
# 5 6 7 8
# 9 0 1 2

# sum_matrix(matrix, [1, 1], [3, 2]) # => 24
#
# **Clarifications:**
# - Row/column indices should start at 0
# - Row/column indices are inclusive (`sum_matrix(matrix, [1, 2], [3, 2])` will
#   include the element at (3, 2)

def matrix_region_sum(matrix, top_left_coords, bottom_right_coords)
  total_sum = 0

  (top_left_coords[0]..bottom_right_coords[0]).each do |row_idx|
    (top_left_coords[1]..bottom_right_coords[1]).each do |col_idx|
      total_sum += matrix[row_idx][col_idx]
    end
  end

  total_sum
end
