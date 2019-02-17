# Non Comparison Sorts

### High level idea

First, initialize an array with length same as the array.  Iterate through the initialized array, setting each index as the value of the index position plus one.  This problem is simple because we assume that the array of length n has numbers in the range from 1..n.  

For our second sort, initialize an array of size N plus one, filled with 0s.  Iterate through our initial array and for each element, add one to the index position of the element.  Initialize a second sorted array.  Iterate through our size N array setting currentIntCount equal to the value at a particular index.  Then iterate for how many counts appear and push into the sorted array.  Finally return our array which ought to be sorted now.  

### Time and space complexity

Let: <br>

- `n` be the length of the array <br>
- `N` be the max length of the second array <br>

Worst cases: <br>

- Time: `O(n+N)` <br>
- Space: `O(N)`

### Edge cases missed

