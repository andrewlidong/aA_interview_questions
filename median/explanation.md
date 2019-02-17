# Median

### High level idea

Since the two arrays are sorted, you can find the middle element of each to find the medians of each list.  The actual median is now somewhere in between these two numbers.  You can discard the non-relevant portions of each list.  Repeat the process, when the middle from both lists converge we've found the median.  