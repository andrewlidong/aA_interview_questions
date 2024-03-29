# Connected Components
# You are given a file which looks like so:
#
# AA BB
# DD FF
# CC EE
# EE DD
# Each line of the file contains a pair of strings. Each string represents is the name of a vertex. The line represents an edge connecting two vertices.
#
# Your task is to find the connected components of the graph. A connected component is a subset of vertices all connected to each other. In this example, the connected components are [["AA", "BB"], ["CC", "DD", "EE", "FF"]].
#
# You don't have to return the elements of the components in any particular order.

# Running time is linear in the number of edges

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
