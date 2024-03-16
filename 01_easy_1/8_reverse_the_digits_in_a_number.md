# Understand the Problem
Write a method, `reversed_number`...
### Identify inputs and outputs
* Input is a positive integer
* Output is the return of the positive integer reversed
### Identify rules/clarify questions
* If the input has trailing zeroes, the output integer must have no leading zeros
### Mental model
* Iterate through the string, starting from the first number
* Concatenate the number in a new string, but starting from the right
# Examples
```
reversed_number(12345)
=> 54321
reversed_number(12213)
=> 31221
reversed_number(456)
=> 654
reversed_number(12000)
=> 21
reversed_number(12003)
=> 30021
reversed_number(1)
=> 1
reversed_number()
=> nil
```
# Data Structure
* Input is a positive integer
* Output is a positive integer
# Algorithm
1. Define a method, `reversed_number`, with `number` as the parameter
2. Create a variable, `result`, that points an empty string
3. After converting `number` to a string, iterate through it, starting from its last digit to its first
4. In that order, concatnate every digit of `number` to `result`
5. Convert `result` to an integer and return it
# Code
```ruby
# Solution 1
def reversed_number(number)
  result = ''
  number_string = number.to_s

  i = 1
  while i <= number_string.length
    result += number_string[-i]
    i += 1
  end

  result.to_i
end
```
```ruby
# Solution 2
def reversed_number(number)
  result = ''
  flipped_array = number.digits
  flipped_array.each { |n| result += n.to_s} # Or: flipped_array.join

  result.to_i
end
```
# Official Solution
```ruby
def reversed_number(number)
  number.to_s.reverse.to_i
end
```
Remember there is `String#reverse`.
# Other Solution(s)
```ruby
def reversed_number(number)
  number.digits.join.to_i
end
```
Remember there is `Integer#digits` and `Array#join`.