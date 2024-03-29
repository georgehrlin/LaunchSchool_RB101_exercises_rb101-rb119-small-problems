# Understand the Problem
Write a method, `xor`, that...
### Identify inputs and outputs
* Input 1: An expression that evaluates to `true` or `false`
* Input 2: An expression that evaluates to `true` or `false`
* Output: Return a boolean value
  * `true` if and only if one input evaluates to `true`
  * `false` if
    * Both inputs evaluate to `false`
    * Both inputs evaluate to `true`
### Identify rules/clarify questions
* None
### Mental model
* If input 1 is true and input 2 is true
  * Return false
* Otherwise
  * Return input 1 OR input 2
# Examples
```ruby
xor?(5.even?, 4.even?) #=> true
xor?(5.odd?, 4.odd?)   #=> true
xor?(5.odd?, 4.even?)  #=> false
xor?(5.even?, 4.odd?)  #=> false
```
# Data Structure
* Input 1 is an expression that evaluates to a boolean value
* Input 2 is an expression that evaluates to a boolean value
* Output is a boolean value
# Algorithm
1. Define a method, `xor?`, that takes `input1` and `input2` as parameters
*If `input1` is true and `input2` is true
   * Return `false`
* Otherwise, return `input1 || input2`
# Code
```ruby
def xor?(a, b)
  if (a == true) && (b == true)
    false
  else
    a || b
  end
end
```
```ruby
def xor?(a, b)
  (!(a && b)) && (a || b)
end
```
# Official Solution
```ruby
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end
```
```ruby
def xor?(value1, value2)
  !!(value1 && !value2) || (value2 && !value1)
end
```
"Methods whose name ends in a `?` should usually only return the explicit `true` and `false` values."