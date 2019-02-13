# Comnnected Components

Write a function which takes a file with each line appearing as a pair of strings.  Each string represents the name of a vertex, while the line represents an edge connecting the vertices.  Your function inds the connected components of the graph, or, the subset of vertices all connected to each other.  

No need to return the elements of the component in any particular order. 

Examples:

```rb
Input: 
AA BB
DD FF
CC EE
EE DD

Output: 
[["AA", "BB"], ["CC", "DD", "EE", "FF"]]
```