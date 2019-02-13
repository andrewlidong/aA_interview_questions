# Connected Components

```rb
lines = File.readlines(FILE_NAME)

matrix = {}
lines.each do |line|
  v1, v2 = line.split(" ")
  matrix[v1] ||= []
  matrix[v1] << v2
  matrix[v2] ||= []
  matrix[v2] << v1
end

components = []
until matrix.empty?
  component = []

  first_key = matrix.keys.first
  queue = [first_key]
  until queue.empty?
    key = queue.shift
    next unless matrix.has_key?(key)
    neighbors = matrix.delete(key)

    component << key
    queue.concat(neighbors)
  end

  components << component
end
```