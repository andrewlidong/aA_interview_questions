# Next Node

### High level idea

Write a helper function which finds the left most node.  

Then if a node ever has a right child, return the left most node of the right child.  

If the node does not have a right child, find the parent node.  If there is no parent node, return nil, we're at the top of the tree and there's nothing larger to the right.  

Else, if the parent node is larger than us, return the parent node.  

If the parent node is smaller than us, keep climbing.  

### Time and space complexity

Let: <br>

- `n` be the number of nodes<br>

Worst cases: <br>

- Time: `O(n)` <br>
- Space: `O(1)`

### Edge cases missed

