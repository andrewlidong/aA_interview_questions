// sum_from_file
// Write a method that reads a file of integers, and sums them. Each integer is on a newline and some begin with "#". Skip those.

const fs = require('fs');

function sumFile(fileName) {
  let sum = 0;
  const file = fs.readFileSync(fileName, 'utf8').split('\n');
  file.forEach((num) => {
    if (num[0] !== '#') {
      sum += Number(num);
    }
  });

  return sum;
}
