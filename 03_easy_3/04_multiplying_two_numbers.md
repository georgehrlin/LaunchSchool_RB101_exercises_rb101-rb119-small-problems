# Understand the Problem
Create a method, `multiply`, that...
### Identify inputs and outputs
* Input 1: A number
* Input 2: A number
* Ouput: Product of input 1 and 2, a number
### Identify rules/clarify questions
* None
### Mental model
* Return product of two inputs
# Examples
```
multiply(5, 3) #=> 15
```
# Data Structure
* Input 1 is a number
* Input 2 is a number
* Output is a number
# Algorithm
* Return product of input 1 and 2
# Code
```ruby
def multiply(a, b)
  a * b
end
```
### Review
Remember, as the official solution points out, I simply use `a * b` and implicit return, instead of `puts a * b`, because `puts` returns `nil`.
# Further Exploration
Let me guess, without first trying it out in `irb`. I think calling `*` on an array with an integer as the argument will end up in one of two results:
1. Each element of the array will be called with `*` and the argument `2`;
2. It will return two copies of the array.

I tested it out in `irb` and found that what actually happens is a new array that is made up of copies of the original array would be returned.
```ruby
irb(main):001:0> ['a', 'b', 'c'] * 3
=> ["a", "b", "c", "a", "b", "c", "a", "b", "c"]
```
Jacob A Taylor pointed out an important behaviour with `Array` multiplication:
"The repeated elements reference the same object as their originals."
```ruby
a = ['apple', 'orange']
b = a * 2

p a # Output: ["apple", "orange"]
p b # Output: ["apple", "orange", "apple", "orange"]

b[1].upcase!

p a # Output: ["apple", "ORANGE"]
p b # Output: ["apple", "ORANGE", "apple", "ORANGE"]
```
Bennie van der Merwe also pointed out that multiplying an array with a string behaves just like `Array#join` with the string as the argument.
```ruby
irb(main):002:0> ['a', 'b', 'c'] * ','
=> "a,b,c"
irb(main):003:0> ['a', 'b', 'c'].join(',')
=> "a,b,c"
```