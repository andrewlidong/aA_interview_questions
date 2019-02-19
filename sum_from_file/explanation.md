# Sum from File

### High level idea

First, require filesync, which has readFileSync.  Store an initial sum to be 0 and store a file as the fileName split over new lines. Now, iterate through our file array and for any value not equal to '#', add it to sum.  

### Time and space complexity

Let: <br>

- `n` be the number of lines<br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(1)`

### Edge cases missed

