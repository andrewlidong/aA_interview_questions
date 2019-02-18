# Productify

```js
const productify = arr => {
    const productArr = new Array(arr.length).fill(1);

    let lowerProduct = 1;
    let upperProduct = 1;

    for (let i = 0; i < arr.length; i++) {
        productArr[i] *= lowerProduct;
        lowerProduct *= arr[i];
    }
    for (let i = arr.length; i >=0; i--) {
        productArr[i] *= upperProduct;
        upperProduct *= arr[i];
    }

    return productArr;
}
```