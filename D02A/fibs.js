// fibs
// Write a function which returns the first n elements from the Fibonacci sequence.
//
// Just a reminder: The Fibonacci sequence is defined as follows:
//
// 0, 1, 1, 2, 3, 5, ...
//
// with the the kth element being: f(k) = f(k - 1) + f(k - 2)
//
// Hints:
//
// What is the base case?
// There are 3:
// n = 0: []
// n = 1: [0]
// n = 2: [0, 1]
// Follow-up questions:
//
// If they used an iterative solution... How can this be done recursively?
// If they used an recursive solution... How can this be done iteratively?
// What are the benefits/drawbacks of each solution?

function fibs(num) {
  const fibNums = [0,1];

  if (num < 2) {
    return fibNums.slice(0, num+1);
  }

  while (fibNums.length < num) {
    const nextFib = fibNums[fibNums.length - 1] + fibNums[fibNums.length - 2];
    fibNums.push(nextFib);
  }

  return fibNums;
}

function fibsRec(num) {
  let fibNums = [0, 1];

  if (num < 3) {
    return fibNums.slice(0, num);
  }

  fibNums = fibsRec(num - 1);
  const nextFib = fibNums[fibNums.length - 1] + fibNums[fibNums.length - 2];
  fibNums.push(nextFib);

  return fibNums;
}
