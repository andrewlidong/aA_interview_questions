# Is Shuffle

### High level idea

For a linear time constant space solution, consider the following:

return false immediately if str1 and str2 have combined length different from from str3.  Set three iterators to 0 each.  While the third iterator is less than the length of str3, if str1[idx1] = str3[idx], increment idx1 and idx3.  If str2[idx2] = str3[idx], increment 2 and 3.  Otherwise, we've hit a character that isn't shared and we return false.  If we pass through this while trial, we can return true.  

Relaxing the assumption that the first two strings contain no overlap, we now need to write a recursive solution.  Return when all strings are empty.  If the first element of str1 and str3 are equal, make a recursive call to is_shuffle with a slightly decreased str1 and str3.  Likewise, if str2 and str3 have their first element equal, return is_shuffle recursively with str2 and str3 cut.  Return false if we ever fail these passes.  

