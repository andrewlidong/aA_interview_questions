# Stack Queue


```rb
class StackQueue
    def initialize
        @in, @out = [], []
    end

    def enqueue(value)
        @in << value
    end

    def dequeue
        if @out.empty
            @out << @in.pop until @in.empty?
        end

        @out.pop
    end
end
```