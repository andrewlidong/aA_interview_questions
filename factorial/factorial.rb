# Factorial
# Implement factorial with and without recursion. What is a potential disadvantage of the recursive way?
#
# What is tail-recursion? Does Ruby have tail-call optimization? Pretend it did; write a tail-recursive version of rec_fac.

# Uses O(n) memory for the stack since Ruby doesn't have tail-call optimization

def tail_rec_fac(num, prod = 1)
  return prod if num == 1
  return tail_rec_fac(num - 1, prod * num)
end

def iter_fac(num)
  product = 1
  2.upto(num) { |i| product *= i }

  product
end
