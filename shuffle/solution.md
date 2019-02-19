# Shuffle

```js
const shuffle = arr => {
    const shuffleArr = arr.slice();
    
    for (let i = 0; i < arr.length; i++) {
        const randIdx = i + Math.floor(Math.random() * (arr.length - 1));
        swap(shuffeArr, randIdx, i);
    }

    return shuffleArr;
}

const swap = (arr, i1, i2) => {
    const temp = arr[i1];
    arr[i1] = arr[i2];
    arr[i2] = temp;
}
```