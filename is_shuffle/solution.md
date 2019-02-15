# Is Shuffle

```rb
def is_shuffle?(str2, str2, str3)
    return false unless str1.length + str2.length == str3.length

    idx1, idx2, idx3 = 0, 0, 0
    while idx3 < str3.length
        if str1[idx1] == str3[idx3]
            idx1 += 1
            idx3 += 1
        elsif str[idx2] == str3[idx3]
            idx2 += 1
            idx3 += 1
        else
            return false
        end
    end

    return true
end

def is_shuffle?(str1, str2, str3)
    return str1.empty? && str2.empty? if str3.empty?

    if str1[0] == str3[0]
        return true if is_shuffle?(str1[1..-1], str2, str3[1..-1])
    end
    if str2[0] == str3[0]
        return true if is_shuffle?(str1, str2[1..-1], str3[1..-1])
    end

    return false
end
```