# Delimiter Valid

### High level idea

Initialize a stack and define opening delimiters as a set for uniqueness.  Build a closing map consisting of closing delimiters as keys and their openers as values.  

Iterate through our string length.  If we encounter an opening, push the opening character into the stack.  If we encounter a closing letter and the last element in our stack (which we pop) does not equal it's hash value, return false.  Finally, if we see that our stack length is equal to zero after all of this, we'll know we're closed, and can return true.  

### Time and space complexity

Let: <br>

- `n` be the length of the string<br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(n)`

### Edge cases missed

