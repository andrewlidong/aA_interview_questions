# Non Comparison Sorts

```js
const sort1 = arr => {
    const sortArr = Array(arr.length);

    for (let i = 0; i < arr.length; i++) {
        sortArr[i] = i + 1;
    }

    return sortArr;
}

const sort2 = (arr, N) => {
    const intCount = Array(N + 1).fill(0);
    arr.forEach( e => intCount[e]++);

    const sortArr = [];

    for (let i = 1; i < intCount.length;i++) {
        const currentIntCount = intCount[i];
        for (let j = 0; j < currentIntCount; j++) {
            sortArr.push(i);
        }
    }
    return sortArr;
}
```