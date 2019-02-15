# Is Shuffle

Given three strings, return whether the third is an interleaving of the first two, meaning, it only contains characters from the other two, no more, no less, and preserves their character ordering.  

Assume that the first two strings don't contain any characters in common.  

Next, relax the assumption that the first two strings contain no overlap.  

Examples:

```rb
str1 = "abc"
str2 = "def"
str3 = "abdecf"
is_shuffle?(str1, str2, str3) # => true
```