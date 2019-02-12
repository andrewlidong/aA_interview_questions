// findCommonAncestor
// Find the lowest common ancestor of two nodes in a binary search tree. Write the function in JS. Assume I give you both the root and the two nodes.

// O(log(n))
function findCommonAncestor(root, nodeA, nodeB) {
  var currentNode = root;
  while true {
    if (currentNode == nodeA || currentNode == nodeB) {
      // one is the descendent of the other.
      return currentNode;
    }

    // is one of the nodes on the left, and the other on the right?
    var bothOnRight = ((currentNode.value < nodeA.value) && (currentNode.value < nodeB.value));
    var bothOnLeft = ((currentNode.value > nodeA.value) && (currentNode.value > nodeB.value));
    var onSameSide = bothOnRight || bothOnLeft;

    if (!onSameSide) {
      // the two nodes are on different sides
      return currentNode;
    }

    currentNode = bothOnRight ? currentNode.right : currentNode.left;
  }
}
