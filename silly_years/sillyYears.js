// silly_years
// Write a function that takes a year and returns an array with the 10 closest subsequent years that meet the following condition: the first two digits summed with the last two digits are equal to the middle two digits.
//
// Clarify if asked:
//
// Year is a four digit integer
// Examples:
// 1978 => 19 + 78 = 97
// 2307 => 23 + 07 = 30

function sillyYears(yr) {
  const years = [];
  let currentYear = yr;

  while (years.length !== 10) {
    currentYear++;
    const digits = currentYear.toString();

    const firstTwo = parseInt(digits.slice(0,2));
    const middleTwo = parseInt(digits.slice(1,3));
    const lastTwo = parseInt(digits.slice(2));

    const isSilly = (firstTwo + lastTwo) === middleTwo;

    if (isSilly) years.push(currentYear);
  }

  return years;
}
