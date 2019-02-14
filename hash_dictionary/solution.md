# Hash Dictionary

```rb
def file_list(hash)
    files = []

    hash.each do |item, nested_item|
        if nested_item.is_a?(Hash)
            folder = item
            nested_files = file_list(nested_item)
            nested_files.each do |file|
                files << "#{folder}/#{file}"
            end
        else
            files << item
        end
    end

    return files
end
```