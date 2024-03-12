# Understand the Problem
### Identify inputs and outputs
* Input: An integer (positive, negative, or zero)
* Output: `true`/`false` based on whether the input integer's absolute value is odd or not
### Identify rules/clarify questions
* "You may assume that the argument is a valid integer value." No need to check for input's validity (integer or not).
### Mental model
* Convert the integer input to its absolute value
* Check whether the absolute value is odd or not
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
### *Mostly correct*
I didn't have to convert the integer to its absolute value first for my first two solutions. Simply `input % 2 == 1` would have been enough.

However, for my last solution, because I used the method `remainder`, I'd have to first find the absolute value of the number. I learned from Further Exploration that `remainder` returns a postive or negative value depending on the receiver.

For instance, `(-17).remainder(2)` returns `-1`, which would lead to a return value of `false` from `(-17).remainder(2) == 1`.
# Further Exploration
`%` and `#remainder` differ in that:
* `%` returns a non-negative result if the number on its right is positive.
* `#remainder` returns a non-negative result if the number on its left is positive.
* `-5 % 2 == 1 #=> true` versus `(-5).remainder(2) == -1 #==> true`
* `5 % -2 == -1 #=> true` versus `5.remainder(-2) == 1 #=> true`

**"If you weren't certain whether `%` were the modulo or remainder operator, how would you rewrite `#is_odd?` so it worked regardless?"**

To negate the differences between `%` and `#remainder` in my solution, I can simply do what I already did (even though it was unnecessary in the original solution). That is, I just need to convert the input integer to its absolute value first, then I can use `%` and `#remainder` interchangeably before `== 1`.

**The `Integer#remainder` method performs a remainder operation in Ruby. Rewrite `#is_odd?` to use `Integer#remainder` instead of `%`.**
```ruby
def is_odd?(input)
  input.abs.remainder(2) == 1
end
```