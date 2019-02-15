# Is Valid IP

### High level idea

First split the string input along '.'.  If the length is not 4, return false.  Now iterate through our ip numbers, and if we encounter a number that isn't a number, or is greater than 255 or less than 0, return false.  Return true if we pass our iteration properly.  