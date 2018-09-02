// digital root
// Sum the digits of a positive integer to form the digital root. The resulting root, should be a single digit (0..9).
//
// Examples
//
// digital_root(1) # => 1
// digital_root(22) # => 4
// digital_root(58) # => 4
// Clarify if asked:
//
// If it is greater than or equal to 10, sum the digits of the resulting number.
// Repeat until there is only one digit remaining, called the "digital root".
// Constraints
//
// Do not use string conversion.
// Tips:
//
// This is a base 10 integer
// How can we extract just the last digit from a number?
// What operator can we use? modulus (%)

function sumDigits(num) {
  let root = 0;

  while (num > 0) {
    root += (num % 10);
    num = Math.floor(num / 10);
  }

  return root;
}

function digitalRoot(num) {
  while (num >= 10) {
    num = sumDigits(num);
  }

  return num;
}

// recursive solution

function digitalRootRecur(num) {
  if (num < 10) return num;
  return digitalRootRecur(sumDigits(num));
}
