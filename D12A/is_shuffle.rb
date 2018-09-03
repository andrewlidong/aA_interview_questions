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
