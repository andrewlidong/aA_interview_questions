# ove_zeros
# Given an array, move all zeros to the end. The order of non-zero elements does not matter. Ex:
#
# move_zeros([1, 2, 0, 3, 4, 0, 5, 6, 0]) == [1, 2, 6, 3, 4, 5, 0, 0, 0]
# Algorithm should be O(n); use O(1) extra space.

def move_zeros(array)
  current_index = 0
  num_zeros = 0

  while current_index < (array.length - num_zeros)
    current_value = array[current_index]

    if current_value != 0
      current_index += 1
      next
    end

    back = array.length - 1 - num_zeros
    array[current_index], array[back] =
      array[back], array[current_index]
    num_zeros += 1

    # we can't add one to current_index since `back` may have contained a zero and we don't know it
  end

  array
end

def move_zeros2(arr)
  left, right = 0, arr.size - 1
  loop do
    left += 1 until arr[left] == 0 || left == right
    right -= 1 until arr[right] != 0 || left == right
    break if left == right
    arr[left], arr[right] = arr[right], arr[left]
  end
  arr
end
