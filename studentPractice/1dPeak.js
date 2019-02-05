function findFirstPeak(array) {
  // debugger
  for (let x = 0; x < array.length - 1; x++) {
    if (x === 0) {
      if (array[x] >= array[x + 1]) {
        return array[x];
      } else {
        continue;
      }
    }

    if (x === array.length - 1) {
      if (array[x] >= array[x-1]) {
        return array[x];
      } else {
        continue;
      }
    }

    const prev = array[x-1];
    const next = array[x+1];
    const current = array[x];
    if (current >= next && current >= prev) {
      return current;
    }
  }
  return -1;
}

let arr = [1,1,2a];

console.log(findFirstPeak(arr));
