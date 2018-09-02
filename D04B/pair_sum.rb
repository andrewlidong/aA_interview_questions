# pair_sum
# Given an array of integers, return all unique element pairs that sum up to a specified value k. List the pairs in [min, max] order.
#
# Clarify if asked:
#
# Aim for better than O(n^2), you can do it!
# Tips:
#
# What would the O(n^2) approach look like?
# Is there a data structure you can use to improve the time complexity?

require 'set'

def pair_sum(arr, k)
  seen = Set.new
  pairs = Set.new

  arr.each do |num|
    target = k - num

    if seen.include?(target)
      pairs.add(
        [[num, target].min, [num, target].max]
      )
    end

    seen.add(num)
  end
