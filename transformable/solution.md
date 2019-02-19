# Transformable

```js
const transformable = (str1, str2) => {
    let i1 = 0, i2 = 0;

    while (i1 < str1.length) {
        if (i2 === str2.length) {
            return false;
        }

        if (str2[i2] === str1[i1]) {
            i1 ++;
        }

        i2++;
    }

    return true;
}
```