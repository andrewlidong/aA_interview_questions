// myMap
// Implement the map function in JavaScript using recursion.
//
// Clarify if asked:
//
// Either monkey patching the Array class or a standalone function is fine
// The return value of map should be an array of the mapped values
// Hints:
//
// What is the base case?
// const map = (fn, [first, ...rest]) =>
// 	first === undefined ? [] : [fn(first), ...map(fn, rest)]
// Follow-up questions:
//
// How does using the spread operator impact performance?
// What is the time complexity of the above solution? O(n^2)
// Why?
// The second solution saves space/time complexity by not creating/copying a new array in each recursive call.

function myMap(array, callback) {
  const mappedArray = [];

  let idx = 0;
  const _pointerMap = () => {
    if (idx >= array.length) return;
    mappedArray.push(callback(array[idx]));
    idx++ ;
    _pointerMap();
  };

  _pointerMap();
  return mappedArray;
}

// Follow-up questions:
//
// What is the benefit of closing over idx?
