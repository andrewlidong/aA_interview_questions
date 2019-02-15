# Is Palindrome

```js
const isPalindrome = str => {
    return str === str.split('').reverse().join('');
}

const isPalindrome = str => {
    for (let i = 0; i < str.length / 2; i++) {
        if (str[i] !== str[str.length - i - 1]) {
            return false;
        }
    }

    return true;
}
```