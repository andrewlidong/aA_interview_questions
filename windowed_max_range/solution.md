# Windowed Max Range

```rb
class MinMaxStack
    def initialize
        @entries = []
    end

    def length
        @entries.length
    end

    def push(value)
        if @entries.empty?
            @entries << { 
                value: value, 
                min: value, 
                max: value }
        else
            @entries << {
                value: value,
                max: [@entries.last[:max], value].max,
                min: [@entries.last[:min], value].max
            }
        end
    end

    def pop
        (@entries.pop)[:value]
    end

    def max
        @entries.empty? ? nil : (@entries.last)[:max]
    end

    def min
        @entries.empty? ? nil : (@entries.last)[:min]
    end
end

class MinMaxStackQueue
    def initialize
        @in, @out = MinMaxStack.new, MinMaxStack.new
    end

    def enqueue(value)
        @in.push(value)
    end

    def dequeue
        if @out.length == 0
            @out.push(@in.pop) until @in.length == 0
        end

        @out.pop
    end

    def length
        @in.length + @out.length
    end

    def max
        maxes = []
        maxes << @in.max if @in.length > 0
        maxes << @out.max if @out.length > 0

        maxes.max
    end

    def min
        mins = []
        mins << @in.min if @in.length > 0
        mins << @out.min if @out.length > 0

        mins.min
    end
end

def windowed_max_range(array, window_size)
    max_range = nil

    q = MinMaxStackQueue.new
    array.each do |el|
        q.enqueue(el)
        if max_range.nil? || (q.max - q.min) > max_range
            max_range = (q.max - q.min)
        end

        if q.length == window_size
            d.dequeue
        end
    end

    max_range
end
```