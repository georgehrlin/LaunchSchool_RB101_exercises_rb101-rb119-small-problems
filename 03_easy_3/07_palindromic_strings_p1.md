# Understand the Problem
"Write a method, `palindrome?` that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punchtuation and spaces."
### Identify inputs and outputs
Input: A string
Output: `true` or `false`
### Identify rules/clarify questions
- Returns true if and only if the input string reads the same forward and backward
### Mental model
If a string is a palindrome, it should stay the same even if the order of the characters in the string is reversed. Therefore, I can determine whether a string is a palindrome by comparing it before and after it is reversed.
# Examples
```ruby
palindrome?('madam') == true           # => true
palindrome?('Madam') == false          # => true
palindrome?("madam i'm adam") == false # => true
palindrome?('356653') == true          # => true
```
# Data Structure
- Input string is a string object
- Ouput is a boolean object
# Algorithm
1. Define a method, `palindrome?`, that takes a string as argument and has `input` as its parameter
2. Return the comparison of `input` and `input` reversed
# Code
```ruby
def palindrome?(input)
  input == input.reverse
end
```
# Further Exploration
"Write a method that determines whether an array is palindromic; that is, the element values appear in the same sequence both forwards and backwards in the array."
### Identify inputs and outputs
- Input: An array
- Output: `true` iff element values appear in the same sequence both forwards and backwards; `false` otherwise
## Mental model
Basically the same mental model as that of the original question: If the array is a palindrome, the array should remain exactly the same even after all of its element values are reversed.
### Examples
```ruby
palindrome_array?([1, 2, 3, 2, 1])   # => true
palindrome_array?([1, 2, 3, 3, 1])   # => false
palindrome_array?([0])               # => true
palindrome_array?(['ab', 'c', 'ab']) # => true
palindrome_array?(['ab', 'cd'])      # => false
```
## Data Structure
- Input is an array object
- Output is a boolean object
## Algorithm
```ruby
def palindrome_array?(input)
  input == input.reverse
end
```
"Now write a method that determines whether an array or a string is palindromic; that is, write a method that can take either an array or a string argument, and determines whether that argument is a palindrome. You may not use an `if`, `unless`, or `case` statement or modifier."
```ruby
def palindromic?(input)
  input == input.reverse
end
```