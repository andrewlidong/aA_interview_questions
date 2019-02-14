# Fibonacci

### High level idea

First, consider the base case, for which there are 3: 

n = 0: []
n = 1: [0]
n = 2: [0,1]

For the iterative solution, first initialize an array with 0 and 1.  If the number n is less than 2, return the first n many elements.  While the length of fib nums is less than num, push the sum of array[-1] and array[-2].  Finally return the result array.  

For the recursive solution, again initialize an array with 0 and 1.  Return again the first n many numbers if the number is less than 2.  Recursively invoke fib_nums minus one, add to fib_nums the previous two elements.  


### Time and space complexity

Let: <br>

- `n` be the number <br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(n)`

### Edge cases missed

