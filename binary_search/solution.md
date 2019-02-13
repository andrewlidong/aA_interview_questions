# Binary Search

```js
const binary_search = (arr, target) => {
  let left = 0;
  let right = arr.length - 1;

  while (left <= right) {
    let mid = Math.floor((left + right) / 2);
    let probe = arr[mid];

    if (probe === target) {
      return mid;
    } else if (probe > target) {
      right = mid - 1;
    } else if (probe < target) {
      left = mid + 1;
    }
  }
  return nil;
}

```

```rb
def binarySearch(arr, target)
  left = 0
  right = arr.length - 1

  while left <= right
    mid = (left + right) / 2
    probe = arr[mid]

    if probe == target
      return mid
    elsif probe < target
      left = mid + 1
    elsif probe > target
      right = mid - 1
    end
  end

  nil
end
```