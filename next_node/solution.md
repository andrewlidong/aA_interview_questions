# Next Node

```rb
def left_most_node(node)
    node = node.left until node.left.nil?
    return node
end

def next(node)
    if node.right
        return left_most_node(node.right)
    end

    until true
        parent_node = node.parent
        if parent_node.nil?
            return nil
        elsif parent_node.left == node
            return parent_node
        else
            node = parent_node
        end
    end
end
```