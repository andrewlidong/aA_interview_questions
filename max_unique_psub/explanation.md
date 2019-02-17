# Maximum Unique Pseudo Substring

### High level idea

First we solve this problem by generating all pseudo substrings and picking the greatest length one.  This returns an O(n^2) solution.  

To get our time complexity to linear, we store the psub array as the last character.  We iterate through each character and return move on if the character is greater than the last element of the pseudo substring.  Otherwise we shovel the character into our pseudo substring array.  Finally, reverse it and join it.  

### Time and space complexity

Let: <br>

- `n` be <br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(1)`

### Edge cases missed

