# duplicates
# Write a method that takes an array and returns its duplicate values.
#
# Examples:
#
# duplicates([1,2,1,4]) # => [1]
# duplicates([]) # => []
# duplicates(["hey", "you", 4, "gonna be a big A", :potato]) # => []
# Hints:
#
# What type of collection has constant lookup/set methods?
# Follow-up Questions:
#
# What if we want to preserve the order of our dupes?
# Can we do this with constant space? How does it impact our time complexity?

# not preserving order

def duplicates(arr)
  values = Set.new
  dupes = Set.new

  arr.each do |value|
    if values[value]
      dupes << value
    else
      values << value
    end
  end

  return dupes.to_a
end

# preserving order

def duplicates(arr)
  values = {}
  dupes = []

  arr.each do |value|
    dupes << value if values[value] == 1

    if values[value]
      values[value] += 1
    else
      values[value] = 1
    end
  end

  return dupes
end
