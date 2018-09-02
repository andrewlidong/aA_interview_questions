// productify
// Given a list of numbers in an array, replace all the numbers with the product of all other numbers.
//
// Do this in O(n) time.
// Do not use division.
// Example: [2, 3, 6] => [18, 12, 6]
// Hints:
//
// We can iterate multiple times over an array and keep O(n) complexity...
// We can iterate from the back to the front, what does that give us?

function productify(arr) {
  const products = new Array(arr.length).fill(1);

  let lowerProduct = 1;

  arr.forEach((el, idx) => {
    products[idx] *= lowerProduct;
    lowerProduct *= el;
  });

  let upperProduct = 1;

  for (let i = arr.length - 1; i >= 0; i--) {
    products[i] *= upperProduct;
    upperProduct *= arr[i];
  }

  return products;
}
