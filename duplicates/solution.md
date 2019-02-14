# Duplicates

```rb
# Without preserving order

def duplicates(arr) 
  values = Set.new
  dupes = Set.new

  arr.each do |value|
    if values.include?(value)
      dupes << value
    else
      values << value
    end
  end

  return dupes.to_a
end

# Preserving Order

def duplicates(arr) 
  values = {}
  dupes = []

  arr.each do |value|
    dupes << value if values[value] == 1
  
    if values[value]
      values[value] += 1
    else
      values[value] = 1
    end
  end

  return dupes
end
```

```js
// Not Presering Order

const duplicates = arr => {
  const seen = new Set();
  const duplicates = new Set();

  arr.forEach(el => {
    if (seen.has(el)) {
      duplicates.add(el);
    } else {
      seen.add(el);
    }
  });

  return Array.from(duplicates);
}

// Preserving Order

const duplicates = arr => {
  const seen = {};
  const duplicates = [];

  arr.forEach(el => {
    if (seen[el] == 1) duplicates.push(el)
    
    if (seen[el]) {
      seen[el] = seen[el] + 1;
    } else {
      seen[el] = 1;
    }
  });

  return duplicates;
}

```