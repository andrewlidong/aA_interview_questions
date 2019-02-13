# Bonus Stack

```js
class MaxStack {
    constructor() {
        this.values = [];
    }

    push(val) {
        if (this.values.length < 1) {
            this.values.push([val, val]);
        }
        else {
            const newMax = Math.max(this.max(), val);
            this.values.push([val, newMax]);
        }
    }

    pop() {
        if (this.values.length < 1) throw new Error('no values present');

        return this.values.pop()[0];
    }

    max() {
        if (this.values.length < 1) throw new Error('no values present');

        const lastValueIdx = this.values.length - 1;
        return this.values[lastValueIdx][1];
    }
}
```

```rb
class MaxStack
    def initialize
        @values = []
    end

    def push(value)
        if @values.empty?
            @values << [value, value]
        else
            new_max = [self.max, value].max
            @values << [value, new_max]
        end
    end

    def pop
        value, max = @values.pop
        value
    end

    def max
        @values.last[1]
    end
end
```