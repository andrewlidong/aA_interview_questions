# Choose a Record

```rb
def choose_a_record(weights)
    total_weights = 0
    keys = []

    weights.each do |key, value|
        total_weights += value
        keys << key
    end

    arr = [0]

    weights.each do |key, value|
        arr << arr.last + value * 1.0/total_weights
    end

    random_number = Math.rand
    i = 0

    while i < arr.length
        if random_number.between?(arr[i], arr[i+ 1])
            return keys[i]
        end
        i += 1
    end
end
```