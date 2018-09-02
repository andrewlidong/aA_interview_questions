# sum_rec
# Write a function that takes an array of integers and recursively computes the sum.
#
# Clarify if needed:
#
# Time complexity should be O(n)
# Hints
#
# What is the base case?
# What is the result of sum_rec([])?
# What is the time complexity of #slice, #drop, etc?
# (It's O(n), so if we #drop on each recursive call, time complexity bumps to O(n ^ 2))
# How can we avoid creating a new array each time?

def sum_rec(nums)
  return 0 if nums.empty?
  nums[0] + sum_rec(nums.drop(1))
end

def sum_rec2(nums, idx = 0)
  return 0 if idx >= nums.length

  nums[idx] + sum_rec2(nums, idx+1)
end
