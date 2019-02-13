# Digital Root

```rb
def sum_digits(num)
  root = 0
  while num > 0
    root += (num % 10)
    num /= 10
  end
  return root
end

def digital_root(num)
  while num >= 10
    num = sum_digits(num)
  end

  return num
end

def digital_root_recursive(num)
  return num if num < 10
  digital_root_recursive(sum_digits(num))
end
```

```js
const sum_digits = num => {
  let root = 0;

  while (num > 0) {
    root = root + (num % 10);
    num = Math.floor(num / 10);
  }

  return root;
}

const digital_root = num => {
  while (num >= 10) {
    num = sum_digits(num);
  }

  return num;
}

const digital_root_recursive = num => {
  if (num < 10) return num;
  digital_root_recursive(sum_digits(num));
}
```