# Problem
Longest Character Removal String Chain

## Question
Given an array, words, of n word strings (words[0], words[1],..., words[n-1]), choose a word from it and, in each step, remove a single letter from the chosen word if and only if doing so yields another word that is already in the library. Each successive character removal should be performed on the result of the previous removal, and you cannot remove a character if the resulting string is not an element in words(see Explanation below for detail). The length of a string chain is the maximum number of strings in a chain of successive character removals.

Complete the longestChain function in your editor. It has 1 parameter: an array of n strings, words, where the value of each element words; (where 0 <= i < n) is a word. It must return single integer denoting the length of the longest possible string chain in words.

## Input Format
The locked stub code in your editor reads the following input from stdin and passes it to your function: The fist line contains an integer. n, the size of the words array. Each line i of the n subsequent lines (where 0 <= i < n) contains an integer describing the respective strings in words.

## Constraints
* 1 <= n <= 50000
* 1 <= the length of each string in w <= 50
* Each string is composed of lowercase ascii letters only

# Output Format
Your function must return a single integer denoting the length of the longest chain of character removals possible.

# Example input/output
a
b
ba
bca
bda
bdca

Calling the function on the input above should output 4. The longest possible chain is "bdca" -> "bca" -> "ba" -> "a".
