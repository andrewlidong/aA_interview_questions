// isBalancedTree
// Write a JavaScript function to check if a binary tree is balanced. A tree is balanced if, at every node, the depth of subtree on the left hand side is equal to the depth of the subtree on the right (plus or minus one).

// Take in the root node
function isBalanced(node) {
  // Base case: the tree is empty.  Return true.

  if (!node) {
    return true;
  }

  // Get the depths of left and right subtrees and compare
  var leftDepth = getDepth(node.left);
  var rightDepth = getDepth(node.right);
  var depthDiff = Math.abs(leftDepth - rightDepth);

  // The tree is balanced if both subtrees are balanced and the difference in depths of those subtrees is betseen -1 and 1.
  return isBalanced(node.left) && isBalanced(node.right) && depthDiff < 2;
}

function getDepth(node) {
  // Base case: empty tree.  Depth is 0.
  if (!node) {
    return 0;
  }

  // Take the larger depth of the two subtrees, calculated recursively
  return Math.max(getDepth(node.left), getDepth(node.right)) + 1;
}

// This solution calculates the depth in a separate recursive call for a time complexity of O(n^2). We can optimize by tracking the depth in the same recursive call for a time complexity of O(n).

function optimizedIsBalanced(node, depthCount) {
  if (!node) {
    depthCount.depth = 0;
    return true;
  }

  const leftDepthCount = { depth: 0 };
  const rightDepthCount = { depth: 0 };
  const isLeftBalanced = optimizedIsBalanaced(node.left, leftDepthCount);
  const isRightBalanced = optimizedIsBalanaced(node.right, rightDepthCount);
  const leftDepth = leftDepthCount.depth;
  const rightDepth = rightDepthCount.depth;

  depthCount.depth = Math.max(leftDepth, rightDepth) + 1;

  if (Math.abs(leftDepth - rightDepth) >= 2) {
    return false;
  } else {
    return isLeftBalanced && isRightBalanced;
  }
}

function _optimizedIsBalanced(node) {
  if (!node) return 0;

  const leftDepth = optimizedIsBalanced(node.left);
  // left side was unbalanced: return -1 up the callstack
  if (leftDepth < 0) return leftDepth;
  const rightDepth = optimizedIsBalanced(node.right);
  // right side was unbalanced: return -1 up the callstack
  if (rightDepth < 0) return rightDepth;

  if (Math.abs(leftDepth - rightDepth) >= 2) {
    // The tree is unbalanced
    return -1;
  } else {
    return Math.max(leftDepth, rightDepth) + 1;
  }
}

function optimizedIsBalanced(node) {
  return _optimizedIsBalanced(node) !== -1;
}
