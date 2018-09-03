// subsets
// Write a function that takes an array and returns all of its subsets. How many sets will it return?

function subsets(arr) {
  if (arr.length === 0) return [[]];

  const subVal = arr[0];
  const subsetsWithoutSubVal = subsets(arr.slice(1));
  const subsetsWithSubVal = subsetsWithoutSubVal.map((sub) => sub.concat(subVal));

  return subsetsWithoutSubVal.concat(subsetsWithSubVal);
}
