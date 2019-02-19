# Subsets

### High level idea

We solve this problem recursively.  If the length of the array is 0, return an array with the empty array.  

Store the first element of the array, and store everything else recursively invoked with arr.  Concatenate each element of our "everything else" with our subVal and store this as a constant.  

Finally return this constant.  

### Time and space complexity

Let: <br>

- `n` be the length of the array<br>

Worst cases: <br>

- Time: `O(n!)` <br>
- Space: `O(n!)`

### Edge cases missed

