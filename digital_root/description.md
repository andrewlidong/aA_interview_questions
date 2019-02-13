# Digital Root

Write a function that sums the digits of a positive integer to form a digital root.  The resulting root should be a single digit (0..9). 

If the root is greater than or equal to 10, sum the digits of the resulting number.  Repeat until there is only one digit remaining, called the digital root.  

Do not use string conversion.  

Examples:

```rb
digital_root(1) # => 1
digital_root(22) # => 4
digital_root(58) # => 4
```

```js
digital_root(1) // => 1
digital_root(22) // => 4
digital_root(58) // => 4
```