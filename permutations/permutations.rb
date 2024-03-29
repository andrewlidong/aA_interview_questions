# permutations
# Write a method that takes an array and returns all its permutations. Time/memory complexity should be proportional to the number of permutations; what is this?

# O(n)
def permutations(arr)
  return [[]] if arr.empty?

  perms = []
  arr.length.times do |i|
    # Choose an element to be first
    el = arr[i]
    rest = arr.take(i) + arr.drop(i + 1)

    # Find permutations of the rest, and tack the first `el` at front.
    new_perms = permutations(rest).map { |perm| perm.unshift(el) }
    perms.concat(new_perms)
  end

  perms
end

# TODO: Write a class, PermutationIterator, that will iterate through permutations of an array. It should use O(n) memory, and return the "next" permutation in O(1) time. It can iterate through permutations in whatever order you desire.
