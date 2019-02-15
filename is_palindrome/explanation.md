# Is Palindrome.  

### High level idea

Using built in methods, compare the string to the string split, reversed and joined.  

Using self constructed methods, iterate through half the string, and check whether each index is equal to its opposite on the back.  If its ever not, return false.  Otherwise, return true.  

### Time and space complexity

Let: <br>

- `n` be the length of the string <br>

Worst cases: <br>

- Time: `O(n/2)` <br>
- Space: `O(1)`

### Edge cases missed

