# Silly Years

```js
const sillyYears = year => {
    const sillyYears = [];
    let currentYear = year;

    while (sillyYears.length !== 10) {
        currentYear ++ ;
        const digits = currentYear.toString();

        const firstTwo = parseInt(digits.slice(0,2));
        const middleTwo = parseInt(digits.slice(1,3));
        const lastTwo = parseInt(digits.slice(2));

        const isSilly = (firstTwo + lastTwo) === middleTwo;

        if (isSilly) sillyYears.ush(currentYear);
    }

    return sillyYears;
}
```