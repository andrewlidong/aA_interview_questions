# shuffle
# Given an array and a random number generator, shuffle the array.

def shuffle(array)
  new_array = array.dup

  array.each_index do |index|
    rand_index = index + rand(array.length - index)
    new_array[index], new_array[rand_index] = new_array[rand_index], new_array[index]
  end

  new_array
end
