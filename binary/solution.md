# Binary

```rb
def binary(num)
  result = []
  until num == 0
    result.unshift(num % 2)
    num = num / 2
  end

  result.empty? ? "0" : result.join
end
```