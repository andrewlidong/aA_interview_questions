# binary_search
# Implement binary search iteratively (no recursion!)
#
# Hints:
#
# Binary search eliminates half of the data set each iteration
# With recursion, we were making copies of smaller arrays...
# What's the difference?
# [1, 3, 5, 7].slice(0, 2) vs. const arrStart = 0, arrEnd = 1
# One gives us a new array back
# The other gives us where that subArray would start and end within the context of the original array...

def binary_search(array, target)
  left = 0
  right = array.length - 1

  while left <= right
    mid = (left + right) / 2
    probe = array[mid]

    return mid if probe == target

    right = mid - 1 if probe > target
    left = mid + 1 if probe < target
  end

  nil
end
