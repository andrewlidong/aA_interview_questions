# Recursive Sum

```js
const sumRec = arr => {
    if (arr.length === 0) return 0;

    return arr[0] + sumRecur(arr.slice(1));
}

const sumRecAcc = (arr, head = 0, tail = arr.length, acc = 0) {
    if (head === tail) return acc;
    return sumRecAcc(arr, head + 1, tail, acc + arr[head])
}
```