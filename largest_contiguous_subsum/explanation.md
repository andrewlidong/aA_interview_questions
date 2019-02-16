# Largest Contiguous Subsum

### High level idea

Set a current_sum counter and a max counter equal to zero or the first element.  Traverse the array and add each element to current sum.  If the max is less than the current sum, reassign it to be equal to the current sum.  If current_sum is ever less than 0, reassign it to 0.  

### Time and space complexity

Let: <br>

- `n` be the length of the array.  <br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(1)`

### Edge cases missed

