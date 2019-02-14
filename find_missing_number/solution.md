# Find Missing Number

```rb
def find_missing_number(arr1, arr2)
    return arr1.reduce(:+) - arr2.reduce(:+)
end
```