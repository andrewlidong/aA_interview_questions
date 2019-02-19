# Windowed Max Range

### High level idea

We can write a naive version that considers all subarrays of size w.  However, if w = n/2 then there are n/2 subarrays of length n/2 to consider, which would be quadratic.  

We can improve this to linear time by writing a MinMaxStack that tracks both the min and the max in a stack.  Then we use our MinMaxStack to write a MinMaxStackQueue which tracks both the min and the max.  

For windowed max range, initialize a queue.  Traverse the array and add each element to the queue.  If the max_range is empty or q.max - q.min is greater than the max_range, reset the max range.  If the q length is equal to the window_size, dequeue.  

Finally return the max_range
