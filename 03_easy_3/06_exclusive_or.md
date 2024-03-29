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
  * If `input1` is true and `input2` is true
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
# Further Exploration
**"Can you think of a situation in which a boolean `xor` method would be useful?"**
I can't come up with a good examble, at least not yet.

So far what I have in mind is `xor` could be useful in a situation where a gate or a door allows for only one person to pass at any given time. The standard entrance to a bedroom would an apt example. Operand one would represent if a person is present to enter the room; operand two would represent if a person is present to leave the room. It makes sense in my mind because if noone is present (`false`, `false`), the evaluation should be `false` as noone is entering or leaving. If there are two people trying to enter and leave the room through the door at the same time(`true`, `true`), neither can enter or leave. However, if only one person is entering/leaving the room through the door, the evaluation should be `true`.

**"Does the `xor` method perform short-circuit evaluation of its operands? Why or why not? Does short-circuit evaluation in `xor` operations even make sense?"**
`xor` does not perform short-circuit evaluation.

If the first operand is `true`, the second operand still needs to be evaluated:
* If the second operand is `true`, the final result is `false`;
* If the second operand is `false`, the final result is `true`.

On the other hand, if the first operand is `false`, the second operand also needs to be evaluated:
* If the second operand is `true`, the final result is `true`;
* If the second operand is `false`, the final result is `false`.

Short-circuit evaluation in `xor` does not make sense.