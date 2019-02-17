# Max Unique Pseudo Substring

Let's define a pseudo-substring: psub is a pseudo-substring of str if there exists some [i_0, i_1..., i_n] such that:

i_0, ..., i_n is an increasing sequence; i_l < i_m for l < m.  

psub[l] ==str[i_l]

For example, 
"abc" is a psub of "abcdef"
"ace" is a psub of "abcdef"
"cdf" is a psub of "abcdef"

"fed" is not a psub of "abcdef" (letters are out of order).  

Recall the definition of lexicographical order, where str1 > str2 if
    (a) str1 != str2 AND EITHER
    (b1) str2 is a prefix of str1 OR
    (b2) at the first position at which str1 and str2 differ (say i), str1[i] > str2[i].  
For instance: "abc" > "ab" and "acb" > "abc"

Given a string str, find the lexicographically greatest psubstring.  

Examples:

```rb
psubs("abcd") == [
  "a",
  "ab",
  "abc",
  "abcd",
  "ac",
  "acd",
  "ad",
  "b",
  "bc",
  "bcd",
  "bd",
  "c",
  "cd",
  "d"
]
```