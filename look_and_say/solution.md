# Look and Say

```rb
def look_and_say(arr)
    return [] if arr.empty?

    output = [[1, arr[0]]]

    (1...arr.length).each do |idx|
        el = arr[idx]
        if el == output.last[1]
            .last[0] += 1
        else 
            output << [1, el]
        end
    end

    output
end
```