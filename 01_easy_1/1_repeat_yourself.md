# Understand the Problem
### Identify inputs and outputs
* Input(s): A string and a positive integer
* Output: Copies of the input string based on the positive integer
### Identify rules/clarify questions
* The string is output positive-integer-number of times, not a single string made up of positive-integer-number
### Mental model
Repeat the output of the string positive-integer-number of times.
# Examples
* Inputs: `('Hello", 3)`
* Output:
```ruby
Hello
Hello
Hello
```
# Data Structure
* The first input is a string
* The second input is an integer
* Output is/are a string(s)
# Algorithm
Have`input` as the method parameter that stands for the string.
Have `number` as the method parameter that stands for the positive integer.
Output `string` `number` of times.
# Code
```ruby
def repeat(input, number)
  number.times(puts input)
end
```