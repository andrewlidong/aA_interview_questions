# is_shuffle?
# Given three strings, return whether the third is an interleaving of the first two. Interleaving means it only contains characters from the other two, no more no less, and preserves their character ordering. "abdecf" is an interleaving of "abc" and "def". Note that the first two strings needn't be in alphabetical order like these.
#
# You may assume that the first two strings do not contain any characters in common.


# Next, relax the assumption that the first two strings contain no overlap. Analyze the time-complexity of your solution. You may wish to view this problem recursively.


# Bonus: Dynamic Programming FTW
# Our previous is_shuffle solution runs in O(2**n) time because each step might involve 2 solutions of a subproblem of size n-1.
#
# That is a terrible time complexity. First, let's change our solution to an iterative solution using breadth first search, rather than a recursive depth first search.


# This still sucks. It still searches the entire tree, branching out as much as twice at every step. This will use tons of memory, too, because it is breadth first.
#
# You can improve it:



# If str1.length == str2.length == str3.length / 2, then there are str.length/2 * str.length/2 possible candidates. That's a memory usage of O(n**2). But it also means a time complexity of O(n**2).
#
# Thanks Edward Swernofsky!

# time: O(n), space: O(1)
def is_shuffle?(str1, str2, str3)
  return false unless str1.length + str2.length == str3.length

  idx1, idx2, idx3 = 0, 0, 0
  while idx3 < str3.length
    if str1[idx1] == str3[idx3]
      idx1 += 1
      idx3 += 1
    elsif str2[idx2] == str3[idx3]
      idx2 += 1
      idx3 += 1
    else
      return false
    end
  end

  true
end

# Next, relax the assumption that the first two strings contain no overlap. Analyze the time-complexity of your solution. You may wish to view this problem recursively.

# O(n2^n): `str3.length == n + 1` requires twice the work of str3.length == n

def is_shuffle?(str1, str2, str3)
  return str1.empty? && str2.empty? if str3.empty?

  if str1[0] == str3[0]
    return true if is_shuffle?(str1[1..-1], str2, str3[1..-1])
  end

  if str2[0] == str3[0]
    return true if is_shuffle?(str1, str2[1..-1], str3[1..-1])
  end

  false
end

# Bonus: Dynamic Programming FTW
# Our previous is_shuffle solution runs in O(2**n) time because each step might involve 2 solutions of a subproblem of size n-1.
#
# That is a terrible time complexity. First, let's change our solution to an iterative solution using breadth first search, rather than a recursive depth first search.

def is_shuffle?(str1, str2, str3)
  candidates = [[0, 0]]

  until candidates.empty?
    str1_used_len, str2_used_len = *(candidates.shift)
    str3_used_len = str1_used_len + str2_used_len

    if str3_used_len == str3.length
      return true
    end

    if str1[str1_used_len] == str3[str3_used_len]
      candidates << [str1_used_len + 1, str2_used_len]
    end
    if str2[str2_used_len] == str3[str3_used_len]
      candidates << [str1_used_len, str2_used_len + 1]
    end
  end

  false
end


# This still sucks. It still searches the entire tree, branching out as much as twice at every step. This will use tons of memory, too, because it is breadth first.
#
# You can improve it:

def is_shuffle?(str1, str2, str3)
  seen_candidates = Hash.new(false)
  candidates = [[0, 0]]

  until candidates.empty?
    str1_used_len, str2_used_len = *(candidates.shift)
    str3_used_len = str1_used_len + str2_used_len

    if str3_used_len == str3.length
      return true
    end

    if str1[str1_used_len] == str3[str3_used_len]
      new_candidate = [str1_used_len + 1, str2_used_len]
      if !seen_candidates[new_candidate]
        candidates << new_candidate
        seen_candidates[new_candidate] = true
      end
    end
    if str2[str2_used_len] == str3[str3_used_len]
      new_candidate = [str1_used_len, str2_used_len + 1]
      if !seen_candidates[new_candidate]
        candidates << new_candidate
        seen_candidates[new_candidate] = true
      end
    end
  end

  false
end

# If str1.length == str2.length == str3.length / 2, then there are str.length/2 * str.length/2 possible candidates. That's a memory usage of O(n**2). But it also means a time complexity of O(n**2).
