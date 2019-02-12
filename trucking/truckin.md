Truckin'
Given a fleet of 50 trucks, each with a full fuel tank and a range of 100 miles, how far can you deliver a payload?

You can transfer the payload from truck to truck.
You can transfer fuel from truck to truck.
All the payload will fit in one truck.
Clarifications:

This does not need a programmatic solution, but is more of a problem-solving puzzle
Hints:

What if we have 1 truck? 2 trucks? Keep going up to the general n-truck case.
Solution
First, note that we have enough fuel for 50 * 100 == 5,000 truck miles. Our problem is that we can't put all the fuel on a single truck.

Instead, begin by driving all 50 trucks simultaneously. After two miles, we will have burned 50 * 2 = 100 miles worth of fuel. This is one trucks worth of fuel. Because we only have 49 trucks worth of fuel left, it is unnecessary to drive all 50 trucks any more, because we can fit all the fuel in 49 trucks.

Therefore, at the two mile mark, transfer all the fuel from one truck to the other trucks. Leave an empty truck at the two mile mark. All the other trucks are totally full of fuel.

Next, drive the remaining 49 trucks for 100/49 miles. After 100/49 miles, we'll have burned another 100 miles worth of fuel, so we can fit all the fuel in the remaining 48 trucks.

Continue like this until there is only one truck left, and it runs out of fuel.

Let's calculate how many miles we can drive:

50 trucks of fuel: 100/50 miles
49 trucks of fuel: 100/49 miles
48 trucks of fuel: 100/48 miles
...
1 truck of fuel: 100/1 miles
Thus, you can then add up 100/50 + 100/49 + 100/48 + ... + 100/1. This is ~449.9.
