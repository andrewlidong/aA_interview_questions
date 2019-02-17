# Move Zeroes

### High level idea

Traverese our array with two pointers until the two pointers intersect.  Swap left and right whenever left is a 0 or right is not a zero.  

Alternatively, we can traverse our array and swap elements to the back, resetting our back until we reach the end minus the number of zeroes.  

### Time and space complexity

Let: <br>

- `n` be the size of the array<br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(1)`

### Edge cases missed

