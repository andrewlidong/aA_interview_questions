# Non-Comparison Sorts
# Note to interviewer: These questions build on each other. Wait for a satisfactory answer before continuing to a new part.
#
# Part 1: You are given an array of length n, containing the numbers 1..n in shuffled order. "Sort" this array in O(n) time.
#
# Part 2: You are given an array of length n with numbers in the range 1..N (N >= n). Sort this array in O(n + N) time. You may use O(N) memory.
#
# Part 3: You are given an array of n strings, each of length k.
#
# Sort the strings in O(kn). Hint: do not compare any two strings. You may assume all strings contain only lowercase letters a..z without whitespace or punctuation.

def sort1(arr)
  (1..(arr.length)).to_a
end

def sort2(arr, max_val)
  counts = Array.new(max_val + 1, 0)
  arr.each { |el| counts[el] += 1 }

  arr = []
  counts.each_index do |val|
    counts[val].times { arr << val }
  end
  arr
end

def sort3(strings, length)
  (length - 1).downto(0) do |i|
    buckets = Array.new(26) { [] }
    strings.each do |string|
      letter = string[i]
      buckets[letter.ord - "a".ord] << string
    end

    strings = []
    buckets.each do |bucket|
      bucket.each { |string| strings << string }
    end
  end

  strings
end
