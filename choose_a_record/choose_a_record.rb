# choose_a_record (LeanData)
# Write a method that takes a hash of symbol keys, for which the values are integers representing each key's weight. The method returns a key such that the chances of selecting a particular key are weighted by that key's value.
#
# For the hash {:a => 1, :b => 2, :c => 3}, the chance of returning :c is 1/2, :b is 1/3, and :a is 1/6.

def choose_a_record(weights)
  total_weights = 0
  keys = []

  weights.each do |key, value|
    total_weights += value
    keys << key
  end

  arr = [0]

  weights.each do |key, value|
    arr << arr.last + value * 1.0/total_weights
  end

  random_number = Math.rand
  i = 0

  while i < arr.length
    if random_number.between?(arr[i], arr[i+1])
      return keys[i]
    end
    i += 1
  end
end
