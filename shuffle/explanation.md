# Shuffle

### High level idea

First, duplicate the array.  Iterate through the array, setting as an index the random number times the length of the length of the array.  Swap the index and random index and return the shuffled array.  

Note that for this to work we need to define a swap function which takes an array and two indices and swaps the two indices.  

### Time and space complexity

Let: <br>

- `n` be the length of the array<br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(n)`

### Edge cases missed

