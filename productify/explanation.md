# Productify

### High level idea

Initialize a new array and fill it with 1s.  Set lower product = 1.  Iterate through the array and at the new array index position, multiply by lower product, and multiply lower product by our current element.  Initialize an upper product = 1.  Traverse the array in reverse, multiplying the index position by the upper roduct, incrementing our upper product by the value each time.  Finally return our products.  

### Time and space complexity

Let: <br>

- `n` be the length of the array<br>

Worst cases: <br>

- Time: `O(2n)` <br>
- Space: `O(n)`

### Edge cases missed

