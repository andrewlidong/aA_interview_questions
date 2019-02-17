# Longest Palindrome

```rb
def longest_palindrome(string)
    best_palindrome_start = 0
    best_palindrome_len = 0

    0.upto(string.length - 1).each do |start|
        # don't look at substrings shorter than the best palindrome. 
        len = best_palindrome_len + 1
        while start + len <= string.length
            if is_palindrome?(start, start, len)
                best_palindrome_start, best_palindrome_len = start, len
            end

            len += 1
        end
    end

    [best_palindrome_start, best_palindrome_start + best_palindrome_len - 1]
end

def is_palindrome?(string, start, len)
    len.times do |i|
        if string[start + i] != string[(start + len - 1) - i]
            return false
        end
    end

    true
end

def longest_palindrome(str)
    longest_length = 0
    longest_begin = 0

    str.length.times do |i|
        stretch = 0
        # expand out from char i and see if there's an expanding palindrome (for odd palindrome lengths)
        loop do
            break unless both_in_range?(i + stretch, i - stretch, str)

            if str[i - stretch] == str[i + stretch]
                this_pal_length = stretch * 2 + 1
                if this_pal_length > longest_length
                    longest_length = this_pal_length
                    longest_begin = i - stretch
                end
            else
                break
            end

            stretch += 1
        end
    end

    [longest_begin, longest_begin + longest_length - 1]
end

def both_in_range?(i1, i2, str)
    [i1, i2].all? { |idx| idx.between?(0, str.length - 1) }
end
```