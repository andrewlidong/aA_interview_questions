# Delimiter Valid

```js
const delimiter_valid = str => {
  const stack = [];
  const openers = new Set(['[', '{', '(']);
  closersMap = {
    ']':'[',
    '}':'{',
    ')':'('
  };

  for (let i = 0; i < str.length; i++) {
    let char = str[i];
    if (openers.has(char)) {
      stack.push(char);
    } else if (closersMap[char] && stack.pop() != closersMap[char]) {
        return false;
    }
  }
  return stack.length === 0;
}
```