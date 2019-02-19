# Transformable

### High level idea

Set two indices equal to 0.  While the first index is less than the first strings length, if the second index ever equals the first indices length return false.  Alternatively, if the position of the second index equals the first, increment the first.  Increment the second always.  Default return true if we pass through.  

### Time and space complexity

Let: <br>

- `n` be the length of string 1<br>
- `m` be the length of string 1<br>

Worst cases: <br>

- Time: `O(n + m)` <br>
- Space: `O(1)`

### Edge cases missed

