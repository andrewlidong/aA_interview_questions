# Is Binary Search Tree

### High level idea

We perform this recursively.  Write our function with three arguments, the node, min and max.  If we ever hit a nil value, return true.  If min is greater than the nodes value or max is less than the nodes value, we've encountered a violation and return false.  Now we call this recursively on our left and right childs.  

### Time and space complexity

Let: <br>

- `n` be all nodes in the tree<br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(1)`

### Edge cases missed

