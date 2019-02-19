# Recursive Sum

### High level idea

First, set the base case if the arrays length is 0, return 0.  Otherwise, return the first element plus the recursively invoked summer on the rest of the array.  

Otherwise, we can solve this problem with an accumulator.  

### Time and space complexity

Let: <br>

- `n` be the length of the array<br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(n)`

### Edge cases missed

