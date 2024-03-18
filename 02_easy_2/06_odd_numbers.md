# Understand the Problem
### Identify inputs and outputs
Output: Output all the odd numbers from `1` to `99`, inclusive, with each number on a separate line
### Identify rules/clarify questions
* None
### Mental model
* Use some kind of collection of numbers from 1 to 99 (inclusive), liekly a range object
* Iterate through this collection and output only the odd numbers
# Examples
```
# Output
1
3
5
...
97
99
```
# Data Structure
Output is a positive integer on every line
# Algorithm
1. Create a range object that includes all numbers from `1` to `99` (inclusive)
2. Iterate through the range
3. Output only numbers that are odd
# Code
```ruby
(1..99).each { |n| puts n if n % 2 == 1 }
```
# Official Solution
```ruby
number = 1

while number <= 99
  puts number
  number =+ 2
end
```
# Further Exploration
"Repeat this exercise with a technique different from the one you just used, and different from the solution shown above."
```ruby
100.times { |n| puts n if n.odd? }
```
```ruby
# Using Integer#upto
1.upto(99) { |n| puts n if n.odd? }
```
```ruby
# Using Array#select
puts ((1..99).to_a.select { |n| n.odd? })
```
I could have simply called `#select` on the range object without `#to_a`.
# Cool Answer by Others
```ruby
# By James McCammon
puts (1.99).select(&:odd?)
```
I didn't understand what `&:` does, so I asked Phind AI.

"In Ruby, the `&:symbol` syntax is a shorthand for converting a symbol into a block that calls a method with the same name as the symbol on each element of the collection. This is a concise way to pass a block to a method like `select`, `map`, or `each` without explicitly defining the block."

Therefore, in this case:
`(1..99).select(&:odd?)` is the equivalent of
`(1..99).select( |n| n.odd? )`.