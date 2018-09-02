// reverse
// Write a function that reverses the characters in a string.
//
// Clarify if asked:
//
// You may not use the built in reverse method
// Solution should have O(n) time complexity
// Follow-up Questions:
//
// What is the time complexity of changing a character in a string?
// Note: Ruby strings, unlike JavaScript, are mutable

function reverse(str) {
  const chars = str.split('');
  const n = chars.length;

  for (let i = 0; i < n / 2; i ++ ) {
    let t = chars[i];
    chars[i] = chars[n - i - 1];
    chars[n - i - 1] = t;
  }

  return chars.join('');
}
