// isPalindrome
// Write a function that returns whether a string is a palindrome. Use JavaScript.
//
// Reminder: A palindrome is a string that is the same forwards and backwards.
//
// Hints:
//
// If a string is the same forwards and backwards, what can we say about the first and last characters?
// Follow-up Questions:
//
// (If they used #reverse) How can this be done with O(1) space complexity?
// (If they didn't use #reverse) How can this be done without directly comparing characters?

function isPalindrome1(str) {
  return str === str.split('').reverse().join('');
}

function isPalindrome2(str) {
  const n = str.length;

  for (let i = 0; i < n / 2; i ++) {
    if (string[i] !== string[n - i - 1]) {
      return false;
    }
  }

  return true;
}
