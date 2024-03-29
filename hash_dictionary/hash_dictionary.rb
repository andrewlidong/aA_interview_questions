# Hash Dictionary
# Suppose a hash representing a directory. All keys are strings with names for either folders or files. Keys that are folders point to nested hashes. Keys that are files point to "true". Write a function that takes such a hash and returns an array of strings with the path to each file in the hash.
#
# Example:
#
# files = {
#   'a' => {
#     'b' => {
#       'c' => {
#         'd' => {
#           'e' => true
#         },

#         'f' => true
#       }
#     }
#   }
# }

# file_list(files) # => ['a/b/c/d/e', 'a/b/c/f']

def file_list(hash)
  files = []

  hash.each do |item, nested_item|
    if nested_item.is_a?(Hash)
      folder = item
      nested_files = file_list(nested_item)
      nested_files.each { |file| files << "#{folder}/#{file}" }
    else
      files << item
    end
  end

  files
end
