# Find Common Ancestor

### High level idea

First, set the currentNode to the root.  If either the first or second node is the root, simply return the root since we know this is the lowest common ancestor.  

Identify whether both nodes are on the right or left by checking the values of each node to the root.  If they're not on the same side, simply return the root, that will be the lowest common ancestor.  

If they are both on the right, reset the currentNode to the right child, otherwise reset the currentNode to the left child.  

### Time and space complexity

Let: <br>

- `h` be the height of the tree<br>

Worst cases: <br>

- Time: `O(h)` <br>
- Space: `O(1)`

### Edge cases missed

