# Understand the Problem
Write a method, `calculate_bonus`...
### Identify inputs and outputs
* Inputs: A positive integer and a boolean
* Output:
  * Return half of the positive integer if the boolean is `true`
  * Otherwise, return `0`
### Identify rules/clarify questions
* None
### Mental model
Evaluate the second, boolean input. If it is `true`, return the positive integer divided by 2. If it is false, return 0.
# Examples
1
* Inputs: 2800, true
* Output: 1400

2
* Inputs: 1000, false
* Output: 0

3
* Inputs: 50000, true
* Output: 25000
# Data Structure
First input is a positive integer.
Second input is a boolean.
Return value is a positive integer or `0`.
# Algorithm
1. Define a method, `calculate_bonus`, with `salary` and `bonus?` as parameters
2. Return `salary / 2` if `bonus` is `true`. Otherwise, return `0`.
# Code
```ruby
def calculate_bonus(salary, bonus_status)
  bonus_status ? (salary / 2) : 0
end
```