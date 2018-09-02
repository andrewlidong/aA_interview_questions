// matrix_region_sum
// Given a matrix of integers and the top left and bottom right coordinates of a rectangular region within the matrix, find the sum of numbers falling inside the rectangle.
//
// Example:
//
// # matrix
// 1 2 3 4
// 5 6 7 8
// 9 0 1 2
//
// sum_matrix(matrix, [1, 1], [3, 2]) # => 24
//
// **Clarifications:**
// - Row/column indices should start at 0
// - Row/column indices are inclusive (`sum_matrix(matrix, [1, 2], [3, 2])` will
//   include the element at (3, 2)

function matrixRegionSum(matrix, topLeft, bottomRight) {
  let sum = 0;

  for (let i = topLeft[0]; i <= bottomRight[0]; i ++) {
    for (let j = topLeft[1]; j <= bottomRight[1]; j++) {
      sum += matrix[i][j];
    }
  }

  return sum;
}
