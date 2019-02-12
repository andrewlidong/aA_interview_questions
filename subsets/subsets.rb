# subsets
# Write a function that takes an array and returns all of its subsets. How many sets will it return?

def subsets(arr)
  return [[]] if arr.empty?

  val = arr[0]
  subs = subsets(arr.drop(1))
  new_subs = subs.map { |sub| sub + [val] }

  subs + new_subs
end
