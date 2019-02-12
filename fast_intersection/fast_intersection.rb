# fast_intersection
# Given arr1 and arr2, find the intersection of both sets.
#
# Naive implementation: O(nm)
#
# Improved implementation: O(nlog(n))
#
# Optimal implementation: O(n)

def intersection_naive(arr1, arr2)
  arr1.uniq.select { |el| arr2.include?(el) }
end

def intersection_improved(arr1, arr2)
  arr1, arr2, idx1, idx2 = arr1.sort, arr2.sort, 0, 0

  intersection = []
  while idx1 < arr1.length && idx2 < arr2.length
    case arr1[idx1] <=> arr2[idx2]
    when -1
      idx1 += 1
    when 0
      intersection << arr1[idx1]
      idx1 += 1
      idx2 += 1
    when 1
      idx2 += 1
    end
  end
  intersection
end

def intersection_optimal(arr1, arr2)
  seen = Hash.new(0)
  intersection = []
  arr1.each { |el| seen[el] += 1 }

  arr2.each do |el|
    intersection << el if seen[el] > 0
    seen[el] -= 1
  end

  intersection
end
