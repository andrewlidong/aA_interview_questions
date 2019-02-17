
# next
# Given a node in a Binary Search Tree, find the next node in the tree. In this case, we can think of ordering being an in-order traversal of the tree where next is smallest node value which is greater or equal to the given node.
#
# Assume you don't have the root of the tree, just a single node from it.

# O(log(n)) if BST is balanced
def next(node)
  if node.right
    # find smallest node to the right
    return left_most_node(node.right)
  end

  # no nodes to the right; climb up
  until true
    parent_node = node.parent
    if parent_node.nil?
      # at the top of the tree, and nothing bigger to the rght
      return nil
    elsif parent_node.left == node
      # parent is bigger than us
      return parent_node
    else
      # parent is smaller, keep climbing
      node = parent_node
    end
  end
end

def left_most_node(node)
  # keep going down and to the left
  node = node.left until node.left.nil?

  node
end
