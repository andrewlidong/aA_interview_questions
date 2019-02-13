# Can Win

### High level idea

First, initialize a queue with the index inside it, positions_to_try.  Also initialize an array with length of the given array filled with falsey values.  Set the position of the index to true.  

Until our queue of positions to try is empty, shift from the queue and set the value to the array position.  If value is ever equal to 0 return true.  Try position + value and position - value, pushing each position into positions_to_try unless pos is a visited_position already or if pos is less than 0 or greater than the length of the array.  Set visited_positions[pos] to be equal to true so we don't add a position twice.  

Default return false if we run through and don't hit zero.  

### Time and space complexity

Let: <br>

- `n` be the length of the array <br>

Worst cases: <br>

- Time: `O(N)` <br>
- Space: `O(N)`

### Edge cases missed