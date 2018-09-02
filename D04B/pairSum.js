// pair_sum
// Given an array of integers, return all unique element pairs that sum up to a specified value k. List the pairs in [min, max] order.
//
// Clarify if asked:
//
// Aim for better than O(n^2), you can do it!
// Tips:
//
// What would the O(n^2) approach look like?
// Is there a data structure you can use to improve the time complexity?

function pairSum(arr, target) {
  const seen = {};
  const pairs = new Set();

  arr.forEach(el => {
    const complement = target - el;

    if (seen[el] !== undefined) {
      const pair = [Math.min(el, complement), Math.max(el, complement)];
      pairs.add(JSON.stringify(pair));
    } else {
      seen[complement] = el;
    }
  });

  return pairs;
}
