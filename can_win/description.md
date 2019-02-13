# Can Win

Write a function canWin(arr, idx) where, given an array and an index, find if it's possible to reach 0 by starting at the index and repeatedly moving left and right by the distance found at the array[index].  

Examples:

```rb
arr = [1,5,2,7,8,2,4]
idx = 6
can_win(arr, idx) # => true
can_win(arr, (idx - 1)) # => false
```

```js
const arr = [1,5,2,7,8,2,4]
let idx = 6
canWin(arr, idx) // => true
canWin(arr, (idx - 1)) // => false
```