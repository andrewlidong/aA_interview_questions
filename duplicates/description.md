# Duplicates

Write a method that takes an array and returns its duplicate vaues.  

Examples:

```rb
duplicates([1,2,1,4]) # => [1]
duplicates([]) # => []
duplicates(["hey", "you", 4, "gonna be a big A", :potato]) # => []
```

```js
duplicates([1,2,1,4]) // => [1]
duplicates([]) // => []
duplicates(["hey", "you", 4, "gonna be a big A", :potato]) // => []
```

Hints: 

What type of collection has constant lookup/set methods?  

Follow-up Question: 

What if we want to preserve the order of our dupes?  Can we do this in constant space?  How does it impact our time complexity not preserving order? 