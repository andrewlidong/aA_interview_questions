# Can Win

```js
const canWin = (arr, idx) => {
  const positionsToTry = [idx];
  const visitedPositions = new Array(arr.length).fill(false);
  visitedPositions[idx] = true;

  while (positionsToTry.length > 0) {
    let currentPos = positionsToTry.shift();
    let currentJump = arr[currentPos];
    if (currentPos === 0) return true;

    let jumps = [currentPos + currentJump, currentPos - currentJump];
    jumps.forEach((newPos) => {
      if (!visitedPositions[newPos] && (newPos >= 0 && arr.length > newPos)) {
        positionsToTry.push(newPos);
        visitedPositions[newPos] = true;
      }
    })
  }
  return false;
}
```

```rb
def can_win(arr, idx)
  positions_to_try = [idx]
  visited_positions = Array.new(arr.length, false)
  visited_positions[idx] = true

  until positions_to_try.empty?
    current_pos = positions_to_try.shift
    current_jump = arr[current_pos]
    return true if current_pos == 0

    [current_pos + current_jump, current_pos - current_jump].each do |new_pos|
      if !visited_positions[new_pos] && (new_pos >= 0 && arr.length > new_pos)
        positions_to_try << new_pos
        visited_positions[new_pos] = true
      end
    end
  end
  return false
end
```