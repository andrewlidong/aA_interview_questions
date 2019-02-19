# Weighted Random Index

### High level idea

First, compute the total sum using reduce (or inject in ruby).  Let value equal a random number from 0 to that total sum.  Store the cumulative sum.  

Traverse the array, adding up elements to the cumulative sum.  Return the index if value is less than the cumulative sum.  

### Time and space complexity

Let: <br>

- `n` be the length of the array<br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(1)`

### Edge cases missed

