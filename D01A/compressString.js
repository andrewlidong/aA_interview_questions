// compress string
// Write a function that takes a string and compress it.
//
// Examples:
//
// compress("aaa") # => "a3"
// compress("abbccc") # => "ab2c3"
// Clarify if asked:
//
// Case matters. (ex. "aa" => "a2", "aA" => "aA")
// Do not compress a character if there is only one in a row
// Tips:
//
// How can you change a string into an integer?

function compress(str) {
  const charCounts = [];
  let currentChar = '';
  let currentCount = 0;

  for (let i = 0, char = str[i]; i < str.length; i++) {
    if (char == currentChar) {
      currentCount++;
    } else {
      if (currentCount) {
        charCounts.push([currentChar, currentCount]);
      }

      currentChar = char;
      currentCount = 1;
    }
  }

  if (currentCount) {
    charCounts.push([currentChar, currentCount]);
  }

  return charCounts.map(([char, count]) => {
    count > 1 ? char + count : char
  }).join('');
}
