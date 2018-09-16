# binary
# Write a function that takes an integer and returns it in binary form.

def binary(num)
  result = []

  # Technically this unshift is unnecessarily slow.  I could push each time then reverse! after the loop

  until num == 0
    result.unshift(num % 2)
    num /= 2
  end

  result.empty? ? "0" : result.join
end
