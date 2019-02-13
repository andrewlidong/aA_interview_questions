# Choose a Record

### High level idea

First initialize a total weight counter and a keys array.  Shovel keys into the keys array and sum up values for the total weight.  

Then initialize an array with the sole element 0.  Iterate through the weights again, building a series summing from the last element with the value as a fraction of the total weights.  

Select a random number and initialize an iterator variable.  Iterate through the length of the array, if the random number is between two elements, return the key at that index.  
