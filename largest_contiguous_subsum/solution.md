# Largest Contiguous Subsum

```rb
def largest_contiguous_subsum(arr)
    current_sum = 0
    max_sum = arr[0] || 0

    arr.each do |el|
        current_sum += el
        max_sum = current_sum if current_sum > max_sum
        current_sum = 0 if current_sum < 0
    end

    return max_sum
end
```