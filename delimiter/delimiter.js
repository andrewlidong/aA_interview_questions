// Delimiter Matching
// Write an algorithm to determine if all of the delimiters in an expression are matched and closed.
//
// Clarify if asked:
//
// Delimiters are ( { [
// Closed is (), (() would not be Closed
// Matched is {}, {] would not be Matched.
// Further examples:
//
// Would return true:
//
// {ac[bb]}
// [dklf(df(kl))d]{}
// {[[[]]]}
// Would return false:
//
// {3234[fd
// {df][d}
// ([)]
// Hints:
//
// What if there was only one delimter to worry about? (just parentheses, for example)
// Play with some very basic cases '(', '(', '[]')
// (this hint kinda gives it away) Are there any data structures that might be useful here?

function isValid(str) {
  const stack = [];
  const openings = new Set(['[', '{', '(']);
  const closingMap = {
    ']' : '[',
    '}' : '{',
    ')' : '('
  };

  for (let i = 0; i < str.length; i++) {
    const letter = str[i];

    if (openings.has(letter)) {
      stack.push(letter);
    } else if (closingMap[letter] && stack.pop() != closingMap[letter]) {
      return false;
    }
  }

  return stack.length === 0;
}
