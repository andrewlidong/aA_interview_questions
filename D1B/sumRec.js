// sum_rec
// Write a function that takes an array of integers and recursively computes the sum.
//
// Clarify if needed:
//
// Time complexity should be O(n)
// Hints
//
// What is the base case?
// What is the result of sum_rec([])?
// What is the time complexity of #slice, #drop, etc?
// (It's O(n), so if we #drop on each recursive call, time complexity bumps to O(n ^ 2))
// How can we avoid creating a new array each time?

function sumRec(arr) {
  if (arr.length === 0) return 0;

  return arr[0] + sumRecur(arr.slice(1));
}

function sumRec2(arr, head = 0, tail = arr.length, acc = 0) {
  if (head === tail) return acc;
  return sumRec2(arr, head+1, tail, acc + arr[head]);
}
