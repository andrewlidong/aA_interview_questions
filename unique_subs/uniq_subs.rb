# uniq subs
# Write a method that finds all the unique substrings for a word.

def uniq_subs(str)
  subs = Set.new

  str.length.times do |i|
    (i...str.length).each do |j|
      subs.add(str[i..j])
    end
  end

  subs.to_a
end
