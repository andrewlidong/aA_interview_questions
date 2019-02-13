# Common Subsets

### High level idea

First, identify the intersection of the subsets.  

This can be done naively by selecting unique elements from the first array, and those elements in the second array that match it.  Alternatively, we can sort both arrays and iterate through each of them whilst comparing indices.  Optimally, we can push elements from array one into a hash, check to see if elements from the other are included in the hash and add to the intersection if they are.  

Once we have the intersection, we can pass this array into a subset generator.  The subset generator works by taking the value of the first element, and mapping onto all other elements the values of everything else with the first element.  

Finally, just combine the two helper methods for intersection and common subsets to return the common subsets.  

### Time and space complexity

Let: <br>

- `n` be <br>

Worst cases: <br>

- Time: `O()` <br>
- Space: `O()`

### Edge cases missed

