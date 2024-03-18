# Understand the Problem
Write a program that...
### Identify inputs and outputs
* Input 1: User input, a number
* Input 2: User input, a number
* Input 3: User input, a number
* Input 4: User input, a number
* Input 5: User input, a number
* Input 6: User input, a number
* Output: A string that tells whether input 6 is among inptus 1 to 5, with an array of inputs 1 to 5 attached
### Identify rules/clarify questions
* None
### Mental model
* Repeat 5 times:
  * Prompt to ask user for a number
  * Add number to a collection
* Prompt user for input 6
* Determine whether input 6 is in collection
  * If yes, output a string that says yes, with collection attached in the end
  * If no, output a string that says no, with collection attached in the end
# Examples
```
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].
```
```
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
```
# Data Structure
* Input 1 to 6 are numbers
* Output is a string with a number and an array interpolated
# Algorithm
1. Initialize a variable that points to an empty array
2. Repeat 5 times:
   * Ouput a string to ask user to input a number
   * Append each number to array
3. Output a string to ask user to input sixth number
   * Store sixth number to a variable
4. Determine if sixth number is one of the numbers in array
   * If yes, output a string that says yes with array attached to its end
   * If no, output a string that says no with array attached to its end
# Code
```ruby
numbers = []

5.times do |n|
  if n == 0
    puts "==> Enter the 1st number:"
  elsif n == 1
    puts "==> Enter the 2nd number:"
  elsif n == 2
    puts "==> Enter the 3rd number:"
  else
    puts "==> Enter the #{3 + 1}th number:"
  end

  number = gets.to_i
  numbers << number
end

puts "==> Enter the 6th number:"
number = gets.to_i

appear_yes = "The number #{number} appears in #{numbers}."
appear_no = "The number #{number} does not appear in #{numbers}."

numbers.include?(number) ? (puts appear_yes) : (puts appear_no)
```
### Reivew
The prompt for the sixth number should have been `==> Enter the last number`, not `6th`.
My code works, but it isn't elegant. Refer to a better solution below.
# Cool Solution by Others
```ruby
# By James Barnett
numbers = []
%w(1st 2nd 3rd 4th 5th last).each do |ordinal|
  print "==> Enter the #{ordinal} number: "
  numbers.push(gets.chomp.to_i)
end

last = numbers.pop
appear = numbers.include?(last) ? 'appears' : 'does not appear'
puts "The number #{last} #{appear} in #{numbers}."
```