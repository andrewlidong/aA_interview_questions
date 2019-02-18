# Permutations

### High level idea

Return an array of an empty array if the input array is empty.  Set permutations as an empty array.  Iterate through the array, and choose an element to be first.  Separate the rest of the array.  Invoke permutations recursively on the remainder of the array.  Add this to perms.  Finally return perms.  

### Time and space complexity

Let: <br>

- `n` be the length of the array<br>

Worst cases: <br>

- Time: `O(n!)` <br>
- Space: `O(n!)`

### Edge cases missed

