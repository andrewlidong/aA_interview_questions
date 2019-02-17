# Longest Palindrome

### High level idea

We could reverse the string and compare it to the original, but this will take extra memory.  Instead, we should be able to solve this problem with constant space.  

Naively, we generate all substrings and for each substring check if its a palindrome.  A palindrome check takes linear time, so this is O(n^3) time, or cubic time.  

This isn't the best solution.  If we realize that every largest palindrome will have many smaller palindromes nested inside it, we realize that we don't have to look at every palindrome separately; we can linearly scan through the array, and for each index in the array (or space between indices), check to see what's the largest palindrome centered there.  This approach will take O(N^2) time and O(1) space.  

### Time and space complexity

Let: <br>

- `n` be <br>

Worst cases: <br>

- Time: `O()` <br>
- Space: `O()`

### Edge cases missed

