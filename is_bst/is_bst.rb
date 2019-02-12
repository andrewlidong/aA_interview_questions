# is_bst?
# Given a binary tree, write a function to check whether it’s a binary search tree or not.

#O(n): must check every node (stops at first detected violation).

def is_bst?(node, min = nil, max = nil)
  return true if node.nil?

  # does this node violate constraints?
  if (min && (min > node.value)) || (max && (max < node.value))
    return false
  end

  # this node follows constraints: do it's children too?
  is_bst?(node.left, min, node.value) && is_bst?(node.right, node.value, max)
end
