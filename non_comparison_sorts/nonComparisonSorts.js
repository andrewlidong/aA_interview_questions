// Non-Comparison Sorts
// Note to interviewer: These questions build on each other. Wait for a satisfactory answer before continuing to a new part.
//
// Part 1: You are given an array of length n, containing the numbers 1..n in shuffled order. "Sort" this array in O(n) time.
//
// Part 2: You are given an array of length n with numbers in the range 1..N (N >= n). Sort this array in O(n + N) time. You may use O(N) memory.
//
// Part 3: You are given an array of n strings, each of length k.
//
// Sort the strings in O(kn). Hint: do not compare any two strings. You may assume all strings contain only lowercase letters a..z without whitespace or punctuation.

function sort1(arr) {
  const sortedArr = Array(arr.length);

  for (let i = 0; i < arr.length; i++) {
    sortedArr[i] = i + 1;
  }

  return sortedArr;
}

function sort2(arr, max) {
  const intCount = Array(max + 1).fill(0);

  arr.forEach( e => intCount[e]++ );

  const sortedArr = [];

  for (let i = 1; i < intCount.length; i++) {
    const currentIntCount = intCount[i];
    for (let j = 0; j < currentIntCount; j++) {
      sortedArr.push(i);
    }
  }

  return sortedArr;
}

function sort3(strings, length) {
  for (let i = length - 1; i >= 0; i--) {
    const buckets = Array(26).fill().map(() => []);
    strings.forEach( str => {
      const letter = str[i];
      const bucketIdx = letter.charCodeAt() - 'a'.charCodeAt();
      buckets[bucketsIdx].push(str);
    });

    strings = [];

    buckets.forEach( bucket => {
      bucket.forEach( str => strings.push(str));
    });
  }

  return strings;
}
