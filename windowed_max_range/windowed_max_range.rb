# Windowed Max Range
# Given an array, and a window size w, find the maximum max - min within a range of w elements.
#
# For instance:
#
# windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# # still 6!
# windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
# You can write a naive version that considers all subarrays of size w. However, if w = n/2 then there are n/2 subarrays of length n/2 to consider. Therefore, I would call this solution quadratic. Write it anyway :-)
#
# Let's improve it to O(n). Here are some hints:
#
# First solve MaxStack. Could you write simply a MinMaxStack to track both the min and the max in a stack?
# Next, solve StackQueue. Could you use your MinMaxStack to write a MinMaxStackQueue which tracks both the min and max.
# Last, can you use your MinMaxStackQueue to solve the problem?

class MinMaxStack
  def initialize
    @entries = []
  end

  def length
    @entries.length
  end

  def push(value)
    if @entries.empty?
      @entries << { value: value, min: value, max: value }
    else
      @entries << {
        value: value,
        max: [@entries.last[:max], value].max,
        min: [@entries.last[:min], value].max
      }
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
      q.dequeue
    end
  end

  max_range
end
