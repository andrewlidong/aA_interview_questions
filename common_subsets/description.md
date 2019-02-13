# Common Subsets

Write a function that takes tw arrays (arr1 and arr2) of integers and returns an array with all subsets common to both.  

Don't generate all subsets of arr1 and arr2, which would take exponential time in the size of arr1 / arr2 (and take O(2^N) memory as well).  Instead, directly generate the subsets of both.  

Examples:

```rb
arr1 = [1,2,4,5]
arr2 = [1,2,3,4]

common_subsets(arr1, arr2) # => [[1,2,4][1,2],[1,4],[2,4],[1],[2],[4]]
```