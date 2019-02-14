# Factorial

```rb
def iter_fac(num) 
  product = 1
  (2..num).each do |el|
    product *= el
  end

  return product
end

def tail_rec_fac(num, product = 1)
  return product if num == 1
  return tail_rec_fac(num - 1, product * num)
end
```

```js
const iter_fac = num => {
  let product = 1;
  for (let i = 2; i <= num; i++) {
    product = product * i;
  }

  return product;
}

const tail_rec_fac = (num, product = 1) => {
  if (num === 1) return product;
  return tail_rec_fac(num - 1, product * num);
}
```