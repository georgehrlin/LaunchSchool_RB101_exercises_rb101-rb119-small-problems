# Understand the Problem
### Identify inputs and outputs
* Input: An integer (positive, negative, or zero)
* Output: `true`/`false` based on whether the input integer's absolute value is odd or not
### Identify rules/clarify questions
* "You may assume that the argument is a valid integer value." No need to check for input's validity (integer or not).
### Mental model
* Convert the integer input to its absolute value
* Return whether the absolute value is odd by using the modulo method
# Examples
1
* Input: `2`
* Output: `=> false`

2
* Input: `-17`
* Output: `=> true`

3
* Input: `0`
* Output: `=> false`
# Data Structure
* Input is an integer
* Output is a boolean
# Algorithm
1. Check whether the input integer is smaller than `0`
    * Yes: Multiply the integer by `-1`
    * No: Do nothing
2. Check whether the remainder after dividing the input integer by `2` is `1`
    * Yes: Return `true`
    * No: Return `false`
# Code
```ruby
def is_odd?(input)
  input *= (-1) if input < 0
  input % 2 == 1
end
```
Or:
```ruby
def is_odd?(input)
  input.abs % 2 == 1
end
```
Or:
```ruby
def is_odd?(input)
  input.abs.remainder(2) == 1
end
```