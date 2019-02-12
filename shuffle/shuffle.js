// shuffle
// Given an array and a random number generator, shuffle the array.

function shuffle(arr) {
  const shuffleArray = arr.slice();
  const arrLength = arr.length;

  for (let i = 0; i < arrLength; i ++) {
    const randIdx = i + Math.floor(Math.random() * (arrLength - 1));
    swap(shuffleArray, randIdx, i);
  }

  return shuffleArray;
}

function swap(arr, idx1, idx2) {
  const temp = arr[idx1];
  arr[idx1] = arr[idx2];
  arr[idx2] = temp;
}
