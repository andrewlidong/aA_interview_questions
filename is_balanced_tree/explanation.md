# Is Balanced Tree

### High level idea

First, define a helper function which returns the depth of a branch.  In getDepth, we return 0 for our base case when we have an empy tree. Then recursively return the max of getDepth to the left and right children plus one.  

Then, for is balanced if the tree is empty return true as the base case.  Then compute the left and right depth with our helper method.  Determine the difference between the left and right depths and if the depthDifference is less than 2, and we recursively invoke isBalanced to the left and right returns true, then return true.  Else, bubble up false. This works with an n^2 time complexity.  

We can optimize this by passing in depthCount as an argument.  Depthcount will be an object with a depth field.  Initialize leftDepthCount with a zero depth, and rightDepthCount with a zero depth.  Initialize isLeftBalanced with a recursive call to the left child, passing in leftDepthCount as depthCount, likewise with isRightBalanced.  Set leftDepth as the depth of leftDepthCount and rightDepth as the depth of rightDepthCount.  Set depthCount as the max of leftDepth and rightDepth + 1.  If the difference between leftDepth and rightDepth is greater than or equal to 2, return false, otherwise, return isLeftBalanced and isRightBalanced.  

### Time and space complexity

Let: <br>

- `n` be <br>

Worst cases: <br>

- Time: `O()` <br>
- Space: `O()`

### Edge cases missed

