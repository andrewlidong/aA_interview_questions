# Unique Subs

### High level idea

Initialize subs as a set (to prevent duplicates).  Write a nested array iterating through the length of the string, adding each possible substring.  Return the array from the subs values.  

### Time and space complexity

Let: <br>

- `n` be the length of the string <br>

Worst cases: <br>

- Time: `O(n^2)` <br>
- Space: `O(n^2)`

### Edge cases missed

