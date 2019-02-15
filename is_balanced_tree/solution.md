# Is Balanced Tree

```js
const isBalanced = node => {
    if (!node) return true;

    let leftDepth = getDepth(node.left);
    let rightDepth = getDepth(node.right);
    let depthDiff = Math.abs(leftDepth - rightDepth);

    return isBalanced(node.left) && isBalanced(node.right) && depthDiff < 2;
}

const getDepth = (node) => {
    if (!node) return 0;
    return Math.max(getDepth(node.left), getDepth(node.right)) + 1;
}

const optimizedBalancer   = (node, depthCount) => {
    if (!node) {
        depthCount.depth = 0;
        return true;
    }

    const leftDepthCount = { depth: 0 };
    const rightDepthCount = { depth: 0 };
    const isLeftBalanced = optimizedIsBalanced(node.left, leftDepthCount);
    const isRightBalanced = optimizedIsBalanced(node.right, rightDepthCount);
    const leftDepth = leftDepthCount.depth;
    const rightDepth = rightDepthCount.depth;

    depthCount.depth = Math.ax(leftDepth, rightDepth) + 1;

    if (Math.abs(leftDepth - rightDepth) >= 2) {
        return false;
    } else {
        return isLeftBalanced && isRightBalanced;
    }
}


```