// duplicates
// Write a method that takes an array and returns its duplicate values.
//
// Examples:
//
// duplicates([1,2,1,4]) # => [1]
// duplicates([]) # => []
// duplicates(["hey", "you", 4, "gonna be a big A", :potato]) # => []
// Hints:
//
// What type of collection has constant lookup/set methods?
// Follow-up Questions:
//
// What if we want to preserve the order of our dupes?
// Can we do this with constant space? How does it impact our time complexity?

function duplicates(arr) {
  const seen = new Set();
  const duplicates = new Set();

  arr.forEach(el => {
    if (seen.has(el)) {
      duplicates.add(el);
    } else {
      seen.add(el);
    }
  });

  return Array.from(duplicates);
}
