# can_win
# Given an array and index, find if it's possible to reach 0 by starting at the index and repeatedly moving left/right by the distance found at array[index].
#
# Hint: Use memoization to record where you've been.

# Non-recursive Solution

def can_win(array, index)
  positions_to_try = [index]
  visited_positions = Array.new(array.length, false)
  visisted_positions[index] = true

  until positions_to_try.empty?
    # We should probably use a queue
    position = positions_to_try.shift
    value = array[position]

    if value == 0
      return true
    end

    [position + value, position - value].each do |pos|
      next if visited_positions[pos]
      next if (pos < 0 || array.length <= pos)

      positions_to_try << pos
      # This ensures we don't add a position twice to our queue
      visited_positions[pos] = true
    end
  end
  false
end
