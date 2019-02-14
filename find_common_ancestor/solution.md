# Find Common Ancestor

```js
const findCommonAncestor = (root, node1, node2) => {
    let currentNode = root;
    while true {
        if (currentNode == node1 || currentNode == node2) {
            return currentNode;
        }

        let bothOnRight = ((currentNode.value < node1.value) && (currentNode.value < node2.value));
        let bothOnLeft = ((currentNode.value > node1.value) && (currentNode.value > node2.value));

        let sameSide = bothOnRight || bothOnLeft;

        if (!sameSide) {
            return currentNode;
        }

        currentNode = bothOnRight ? currentNode.right : currentNode.left
    }
}
```