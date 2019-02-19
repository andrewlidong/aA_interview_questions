# Sum from File

```js
const fs = require('fs');

const sumFile = fileName => {
    let sum = 0;
    const file = fs.readFileSync(fileName, 'utf8').split('\n');
    file.forEach((num) => {
        if (num[0] !== '#') {
            sum += Number(num);
        }
    });

    return sum;
}
```