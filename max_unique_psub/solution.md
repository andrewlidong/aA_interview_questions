# Max Unique Pseudo Substring

```rb
def max_unique_psub(str)
    psub = str[str.length - 1]

    (str.length - 2).downto(0) do |ch|
        next if str[ch] < psub[0]
        # This takes O(n) in the inner loop to copy the contents of psub to create a new string
        psub = str[ch] + psub
    end

    psub
end

def max_unique_psub(str)
    psub_arr = [str[str.length - 1]]

    (str.length - 2).downto(0) do |ch|
        next if str[i] < psub_arr.last
        # This takes amortized O(1) time.  
        psub_arr << str[i]
    end

    psub = psub_arr.reverse.join("")
    return psub
end
```