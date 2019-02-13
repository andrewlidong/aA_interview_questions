# Cyclic

### High level idea

Naively, we can solve this problem by iterating through our linked list, pushing links into a set and returning true if we ever encounter an element in our set.  This would cost us N memory though.  

Alternatively, we can initialize a slow runner and a fast runner.  If the slow runner ever hits our fast runner, return true.  Return false is our fast runner ever hits a nil value.  This approach cuts our space complexity to being constant.  

### Time and space complexity

Let: <br>

- `n` be the length of the linked list<br>

Worst cases: <br>

- Time: `O(N)` <br>
- Space: `O(1)`

### Edge cases missed

