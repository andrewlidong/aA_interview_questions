# Valid IPv4 Address

```rb
def valid_ip?(str)
    return false unless str =~ /^\d+(\.\d+){3}$/
    nums = str.split(".").map(&:to_i)
    nums.all? { |num| num >= 0 && num <= 255 }
end
```

```js
const isValidIP = str => {
    const ipNumbers = str.split('.');

    if (ipNumbers.length !== 4) {
        return false;
    }

    for (let i = 0; i < ipNumbers.length; i++) {
        const ipNumber = Number(ipNumbers[i]);

        if (ipNumber !== ipNumber || (ipNumber > 255 || ipNumber < 0)) {
            return false;
        }
    }

    return true;
}
```