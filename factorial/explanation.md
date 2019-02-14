# Factorial

### High level idea

To solve the problem iteratively, set a product variable equal to 1.  From 2 up to our number, multiply to our product, finally returning product.  

To solve the problem recursively, add an argument for product.  Return product if the number is equal to 1.  Recursively call ourself with the number subtracted by 1, passing into the product field, product * number.  

### Time and space complexity

Let: <br>

- `n` be the number<br>

Worst cases: <br>

- Time: `O(N)` <br>
- Space: `O(1)`

### Edge cases missed

