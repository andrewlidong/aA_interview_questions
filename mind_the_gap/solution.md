# Mind the Gap

```js
const mindTheGap = arr => {
    const sortedArr = arr.sort();

    if (sortedArr[0] !== 0) return 0;

    for (let i = 0; i < sortedArr.length - 1; i++) {
        if (arr[i] + 1 !== arr[i+ 1]) {
            return arr[i] + 1;
        }
    }

    return arr.length;
}

const mindTheGap2 = arr => {
    const nums = new Array(arr.length + 1).fill(0);
    arr.forEach( num => {
        nums[num]++;
    })

    for (let i = 0; i < nums.length; i++) {
        if (nums[i] === 0) {
            return i;
        }
    }
}

const mindTheGap3 = arr => {
    let realSum = 0;

    arr.forEach(num => {
        realSum += num;
    });

    let theoreticalSum = 0;
    for (let i = 0; i <= arr.length; i++) {
        theroreticalSum += i;
    }

    return theoreticalSum - realSum;
}
```