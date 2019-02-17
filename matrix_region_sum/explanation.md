# Matrix Region Sum

### High level idea

Initialize a sum counter.  Itterate from the topLeft for both the x and y coordinates, iterate through the array, adding to the sum each element.  Finally return the sum.  

### Time and space complexity

Let: <br>

- `n` be the width of the matrix<br>
- `m` be the height of the matrix<br>

Worst cases: <br>

- Time: `O(nm)` <br>
- Space: `O(1)`

### Edge cases missed

