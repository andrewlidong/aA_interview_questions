# Sum Upon Sums

### High level idea

The first way to solve this problem is to sort the array and traverse the sorted array, returning the first position that isn't equal to its index + 1.  This costs us NlogN and N space.  

To cut this down, initialize a new array filled with 0s.  Traverse the original array and for each element, 'tag' the initialized array with a plus one increment.  Traverse the initialized array and if ever we encounter a index pointing to zero return that index.  This costs us N time and N space.  

For the best solution, we take advantage of the fact that the expected sum of the first 'n' numbers is (n + 1)(n / 2).  We sum up all the numbers and subtract the actual from the expected values.  This number must be the one that is missing.  

### Time and space complexity

Let: <br>

- `n` be <br>

Worst cases: <br>

- Time: `O()` <br>
- Space: `O()`

### Edge cases missed

