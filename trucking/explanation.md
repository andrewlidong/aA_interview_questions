# Trucking

### High level idea

First take note that we have enough fuel for 50 * 100 = 5000 truck miles.  Our problem is that we can't put this all on a single truck.  

Instead, begin by driving all 50 trucks simultaneously.  After two miles, we'll have burned 50 * 2 = 100 miles of fuel.  This is one trucks worth of fuel.  Because we only have 49 trucks worth of fuel left, it is unnecessary to drive all 50 trucks any more, because we can fit all the fuel in 49 trucks.  

At the two mile mark, transfer all the fuel from one truck to the other trucks.  Leave an empty truck at the two mile mark, with all other trucks totally full of fuel.  

Now drive the remaining 49 trucks 100/49 miles.  After 100/49 miles we'll have burned another 100 miles of fuel, so we can fit all the fuel in the remaining 48 trucks.  

Continue like this until there is only one truck left and it runs out of fuel.  

You can add up 100/50 + 100/49 + 100/48 + ... + 100/1 which yields ~449.9