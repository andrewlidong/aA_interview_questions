# Subsets

```js
const subsets = arr => {
    if (arr.length === 0) return [[]];

    const store = arr[0];
    const subsWithoutStore = subsets(arr.slice(1));
    const subsWithStore = subsWithoutStore.map((sub) => sub.concat(store));

    return subsWithoutStore.concat(subsWithStore);
}
```