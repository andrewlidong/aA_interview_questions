# Move Zeroes

```rb
def move_zeroes(arr)
    left, right = 0, arr.size - 1
    loop do
        left += 1 until arr[left] == 0 || left == right
        right -= 1 until arr[right] != 0 || left == right
        break if left == right
        arr[left], arr[right] = arr[right], arr[left]
    end
    return arr
end

def move_zeroes(arr)
    current_idx = 0
    zeroes = 0

    while current_idx < (arr.length - zeroes)
        current_val = arr[current_idx]

        if current_val != 0
            current_idx += 1
            next
        end

        back = arr.length - 1 - zeroes
        arr[current_idx], arr[back] = arr[back], arr[current_idx]
        zeroes += 1
    end

    return arr
end
```