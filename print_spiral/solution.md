# Print Spiral

```rb
def print_spiral(a)
    a = a.dup
    result = []

    while true
        break if a.length == 0 && a[0].length == 0

        # remove the first row
        results.concat(a.shift)
        break if a.length == 0 && a[0].length == 0

        a.each { |row| result << row.pop }
        break if a.length == 0 && a[0].length == 0

        result.concat(a.pop.reverse)
        break if a.length == 0 || a[0].length == 0

        a.reverse.each { |row| result << row.shift }
    end

    return result
end
```