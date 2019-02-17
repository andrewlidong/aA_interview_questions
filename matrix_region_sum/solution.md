# Matrix Region Sum

```js
function matrixRegionSum(matrix, topLeft, bottomRight) {
    let sum = 0;

    for (let i = topLeft[0]; i <= bottomRight[0]; i++) {
        for (let j = topLeft[1]; j <= bottomRight[1]; j++) {
            sum += matrix[i][j];
        }
    }

    return sum;
}
```