# Understand the Problem
Write a method, `negative`, that...
### Identify inputs and outputs
* Input: A number that can be positive, negative, or 0
* Output:
  * If input is a positive number, return its negative
  * If input is a negative number or 0, return input
### Identify rules/clarify questions
* None
### Mental model
* Define a method, `negative`
* Determine if input is positive
  * If yes, return input's negative
  * Otherwise, return input
# Examples
```ruby
puts negative(5) == -5  # Output: true
puts negative(-3) == -3 # Output: true
puts negative(0) == 0   # Output: true
```
# Data Structure
* Input is a number
* Output is a number
# Algorithm
1. Define a method, `negative`, with `number` as parameter
2. Determine if `number` is larger than `0`
  * If it is, return negative `number`
  * Otherwise, return `number`
# Code
```ruby
def negative(number)
  number > 0 ? -number : number
end
```
```ruby
# Using Numeric.positive?
def negative(number)
  number.positive? ? -number : number
end
```
# Further Exploration
```ruby
def negative(number)
  -number.abs
end
```
"This works by flipping the problem on the head. It straightaway converts it to a positive number with `Numeric#abs` and then prepends it with a negative operator to make it negative. `abs` returns the absolute value of a number (the non-negative value of a number without regard to its sign)."

"This is clearly shorter. However, is it superior?"

This is a smart solution. It takes advantage of the order of operation that `-` will be attached to the return value of `number.abs` last. Otherwise, it would't work.

This solution is superior in brevity, but not in readability. I'd guess many readers of this code may think it's wrong because they'd assume that the code would work like `(-number).abs` instead.

Also, some wise words were mentioned by Bob Rodes in student solutions:

"Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live. Code for readability."
\- John F. Woods