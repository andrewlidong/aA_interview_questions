# Unique Subs

```js
const uniqSubs = str => {
    const subs = new Set();

    for (let i = 0; i < str.length; i++) {
        for (let j = 0; j < str.length; j++) {
            subs.add([str.slice(i, j + 1)]);
        }
    }

    return Array.from(subs.values());
}
```