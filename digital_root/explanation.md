# Digital Root

### High level idea

First write a digit summer.  In it, initialize root to be zero.  While the number is greater than 0, add to the root the number modulo 10 and divide by 10 rounding down.  Return the root.  

Now, while our number is greater than or equal to ten, reset the number to be our invoked sumDigits on that num.  

Alternatively, we can solve this problem recursively by again invoking sumDigits on the number itself until we hit a base case of the number being less than 10.  

### Time and space complexity

Let: <br>

- `n` be the number of digits in the number.   <br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(1)`

### Edge cases missed

