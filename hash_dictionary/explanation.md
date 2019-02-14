# Hash Dictionary

### High level idea

First initialize an empty array.  Iterate through our hash, checking to see if the value is a hash or not.  If it's a hash, flag it as a folder and iterate through it again.  If it's a file, push into files.  

### Time and space complexity

Let: <br>

- `n` be number of key value pairs in the hash<br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(n)`

### Edge cases missed

