# fibs
# Write a function which returns the first n elements from the Fibonacci sequence.
#
# Just a reminder: The Fibonacci sequence is defined as follows:
#
# 0, 1, 1, 2, 3, 5, ...
#
# with the the kth element being: f(k) = f(k - 1) + f(k - 2)
#
# Hints:
#
# What is the base case?
# There are 3:
# n = 0: []
# n = 1: [0]
# n = 2: [0, 1]
# Follow-up questions:
#
# If they used an iterative solution... How can this be done recursively?
# If they used an recursive solution... How can this be done iteratively?
# What are the benefits/drawbacks of each solution?

def fibs(num)
  fib_nums = [0,1]
  return fib_nums.take(num) if num < 2

  while fib_nums.count < num
    fib_nums << fib_nums[-1] + fib_nums[-2]
  end

  return fib_nums
end

def fibs_rec(num)
  fib_nums = [0,1]
  return fib_nums.take(num) if num < 3

  fib_nums = fibs_rec(num - 1)
  fib_nums << fib_nums[-1] + fib_nums[-2]

  fib_nums
end
