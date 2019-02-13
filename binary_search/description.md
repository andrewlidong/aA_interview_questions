# Binary Search

Implement binary search iteratively (without recursion).  That is, given a sorted array and a target element, return the index of the target element in O(logN) time and constant space.  

Hints: 

Binary search eliminates half of the data set each iteration.  With recursion, we were making copies of smaller arrays.. 


Examples:

```js
const arr = [1,3,5,7]
let k = 3
binary_search(arr, k) // => 1
```

```rb
arr = [1,3,5,7]
k = 5
binarySearch(arr, k) # => 2
```