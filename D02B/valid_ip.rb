# Write a method that takes a string and returns whether the input is a valid IPv4 address.
#
# Clarify if asked:
#
# Anything between 0.0.0.0 and 255.255.255.255

def valid_ip?(str)
  return false unless str =~ /^\d+(\.\d+){3}$/
  nums = str.split(".").map(&:to_i)
  nums.all? {|num| num >= 0 && num <= 255}
end
