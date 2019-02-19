# Weighted Random Index

```rb
def weighted_random_index(arr)
    total_sum = arr.inject(:+)
    value = rand(total_sum)

    cum_sum = 0
    arr.each_with_index do |el, i|
        cum_sum += el
        return i if value < cum_sum
    end
end
```