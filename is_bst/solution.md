# Is Binary Search Tree

```rb
def is_bst?(node, min = nil, max = nil)
    return true if node.nil?

    if (min && (min > node.value) || (max && (max < node.value))
        return false
    end

    is_bst?(node.left, min, node.value) && is_bst?(node.right, node.value, max)
end
```