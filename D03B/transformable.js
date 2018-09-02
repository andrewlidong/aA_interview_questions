// transformable?
// Given a two strings, return whether the second can be transformed into the first by removing characters.
//
// Ex. aabbaa can be transformed into aba by removing a, b, and a
//
// Clarifications:
//
// We can assume str2 always has greater or equal length than str1
// Hints:
//
// What if str1 is the empty string?
// Start with the case where str1 === str2 and then build up

function transformable(str1, str2) {
  let idx1 = 0, idx2 = 0;

  while (idx1 < str1.length) {
    if (idx2 === str2.length) {
      return false;
    }

    if (str2[idx2] === str1[idx1]) {
      idx1++;
    }

    idx2++;
  }

  return true;
}
