// Sums Upon Sums
// I give you a scrambled list of n unique integers between 0 and n. Tell me what number is missing.
//
// A) Solve this problem in O(nlog(n)) time, O(n) space.
//
// B) Solve this problem in O(n) time, O(n) space.
//
// C) Solve this problem in O(n) time, O(1) space.

// A) Sort and then go through the numbers looking for a gap.
function mindTheGap(arr) {
  const sortedArr = arr.sort();

  // "Gap" number was at start of array
  if (sortedArr[0] !== 0) return 0;

  for (let i = 0; i < sortedArr.length - 1; i++) {
    if (arr[i] + 1 !== arr[i+1]) {
      return arr[i] + 1;
    }
  }
  // 'Gap' number was at end of array
  return arr.length;
}

// B) Use an array to keep a count of all numbers
function mindTheGap2(arr) {
  const myNums = new Array(arr.length + 1).fill(0);
  arr.forEach(num => myNums[num]++) {
    if (myNums[i] === 0) {
      return i;
    }
  }
}

// C) The expected sum of the first `n` numbers is `(n+1)(n/2)` (prove this.)
// Sum up all the numbers youself, and subtract the actual from expected values.  This number must be missing

function mindTheGap3(arr) {
  let actualSum = 0;

  arr.forEach(num => {
    actualSum += num;
  });

  let expectedSum = 0;
  for (let i = 0; i <= arr.length; i++) {
    expectedSum += i;
  }
  return expectedSum - actualSum;
}
