# rand7
# Write a method to generate a random integer (0...7), given a method that generates a random integer between (0...5). The resulting rand7 distribution must be uniform.

def rand7
  while true
    # Construct a random number (0...5*2)
    num = 5 * (rand5) + rand5
    return (num % 7) if num < 21

    # reject 21, 22, 23, 24
  end
end
