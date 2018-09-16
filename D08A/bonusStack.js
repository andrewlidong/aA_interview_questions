// bonus_stack
// Implement a stack with a method max that returns the maximum value of the stack. max should run in O(1) time.

class MaxStack {
  constructor() {
    this.values = [];
  }

  push(val) {
    if (this.values.length < 1) {
      this.values.push([val, val]);
    } else {
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
