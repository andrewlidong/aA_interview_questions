# Duplicates

### High level idea

First we solve the problem without preserving order.  Initialize two sets, one corresponding to values wherein we'll push each value, and one corresponding to duplicates.  As we iterate through our array, if we notice that the value already exists within our main set, we add it to our duplicates array.  Then we return our duplicates array.  

To solve the problem while preserving order, we initialize values to be a hash and dupes to be an array.  Here we simply push to dupes array for every time we encounter a value already in our values hash.  

### Time and space complexity

Let: <br>

- `n` be the size of the array<br>

Worst cases: <br>

- Time: `O(N)` <br>
- Space: `O(N)`

### Edge cases missed

