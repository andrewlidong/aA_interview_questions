# Permutations

```rb
def permutations(arr)
    return [[]] if arr.empty?
    perms = []
    arr.length.times do |i|
        el = arr[i]
        remainder = arr.take(i) + arr.drop(i + 1)

        new_perms = permutations(remainder).map do |perm|
            perms.unshift(el)
        end
        perms.concat(new_perms)
    end

    return perms
end
```