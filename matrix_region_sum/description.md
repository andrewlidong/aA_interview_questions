# Matrix Region Sum

Given a matrix of integers and the top left and bottom right coordinates of a rectangular region within the matrix, find the sum of numbers falling inside the rectangle.  

Examples:

```js
const matrix = [[1 2 3 4],
                [5 6 7 8],
                [9 0 1 2]]

sum_matrix(matrix, [1, 1], [3, 2]) // => 24
```

# Notes: 

Row/column indices should start at 0.  They are also inclusive, being that sum_matrix(matrix, [1,2],[3,2]) will incude the element at (3,2).  