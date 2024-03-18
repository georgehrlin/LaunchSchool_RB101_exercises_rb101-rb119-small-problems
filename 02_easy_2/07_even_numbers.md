# Understand the Problem
### Identify inputs and outputs
Output: Output all the even numbers between `1` and `99` (inclusive), with each number on a new line
### Identify rules/clarify questions
* None
### Mental model
* Use a collection of every number from 1 to 99 (inclusive)
* Select for only the even numbers within the collection
* Output all the even numbers
# Examples
```
2
4
6
...
96
98
```
# Data Structure
* Output is a positive integer on every line
# Algorithm
1. Create a range object that includes numbers from 1 to 99 (inclusive)
2. Iterate through the range object and select out only the even numbers
3. Output each even number
# Code
```ruby
puts (1..99).select(&:even?)
```
```ruby
# A solution based on the last official solution
number = 1

while number <= 97
  puts number += 1
  number += 1
end
```
# Official Solution
```ruby
value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
```