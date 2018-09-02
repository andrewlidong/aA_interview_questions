# productify
# Given a list of numbers in an array, replace all the numbers with the product of all other numbers.
#
# Do this in O(n) time.
# Do not use division.
# Example: [2, 3, 6] => [18, 12, 6]
# Hints:
#
# We can iterate multiple times over an array and keep O(n) complexity...
# We can iterate from the back to the front, what does that give us?

def productify(arr)
  products = Array.new(arr.length, 1)

  lower_prod = 1

  0.upto(arr.size - 1) do |i|
    products[i] = products[i] * lower_prod
    lower_prod = lower_prod * arr[i]
  end

  upper_prod = 1

  (arr.size - 1).downto(0) do |i|
    products[i] = products[i] * upper_prod
    upper_prod = upper_prod * arr[i]
  end

  products
end
