// binary_search
// Implement binary search iteratively (no recursion!)
//
// Hints:
//
// Binary search eliminates half of the data set each iteration
// With recursion, we were making copies of smaller arrays...
// What's the difference?
// [1, 3, 5, 7].slice(0, 2) vs. const arrStart = 0, arrEnd = 1
// One gives us a new array back
// The other gives us where that subArray would start and end within the context of the original array...

function binarySearch(arr, target) {
  let leftIdx = 0;
  let rightIdx = arr.length - 1;

  while (leftIdx <= rightIdx) {
    const midIdx = Math.floor((leftIdx + rightIdx) / 2) ;
    const el = arr[midIdx];

    if (el === target) {
      return midIdx;
    } else if (el > target) {
      rightIdx = midIdx - 1;
    } else {
      leftIdx = midIdx + 1;
    }
  }

  return -1;
}
