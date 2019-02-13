# Binary Search

### High level idea

Set two pointers, left equal to zero and right equal to array length - 1.  While left is less than or equal to right, set mid as the mean of left and right, and set the probe as the element at the middle.  We return the mid if the probe equals the target.  If the probe is less than the target, reset right to be mid - 1 and if the probe is greater than the target, reset left to be mid + 1.  Continue doing this until we find the value, defaulting to null or nil if we never reach it.  

### Time and space complexity

Let: <br>

- `n` be the length of the sorted array.  <br>

Worst cases: <br>

- Time: `O(logN)` <br>
- Space: `O(1)`

### Edge cases missed

