# Fibonacci

```rb
def fibs(num)
  fib_nums = [0,1]
  return fib_nums.take(num) if num < 2
  while fib_nums.length < num
    fib_nums << fib_nums[-1] + fib_nums[-2]
  end
  return fib_nums
end

def fib_rec(num)
  fib_nums = [0,1]
  return fib_nums.take(num) if num < 3

  fib_nums = fibs_rec(num - 1)
  fib_nums << fib_nums[-1] + fib_nums[-2]

  fib_nums
end
```

```js
const fibs = num => {
  const fib_nums = [0,1];
  if (num < 2) return fib_nums.slice(0, num);
  while (fib_nums.length < num) {
    fib_nums.push(fib_nums[fib_nums.length - 1] + fib_nums[fib_nums.length - 2]);
  }

  return fib_nums;
}

const fib_rec = num => {
  let fib_nums = [0,1];
  if (num < 3) return fib_nums.slice(0, num);

  fib_nums = fib_rec(num - 1);
  fib_nums.push(fib_nums[fib_nums.length - 1] + fib_nums[fib_nums.length - 2]);

  return fib_nums;
}
```