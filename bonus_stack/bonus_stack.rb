# bonus_stack
# Implement a stack with a method max that returns the maximum value of the stack. max should run in O(1) time.

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
