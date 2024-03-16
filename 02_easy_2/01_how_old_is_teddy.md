# Understand the Problem
Randomly generate a positive integer between 20 and 200 (inclusive) and interpolate it in a string. Then, output the string.
### Identify inputs and outputs
* Input: None
* Output: A string with a number interpolated
### Identify rules/clarify questions
* The integer to be generated is between 20 and 200 (inclusive)
### Mental model
* Output a string that interpolates the generation of a positive integer between 20 and 200
# Examples
```
# Output
Teddy is 23 years old!
```
# Data Structure
* Output is a string
# Algorithm
* Output a string that interpolates the generation of a positive integer between 20 and 200
# Code
```ruby
puts "Teddy is #{(20..200).to_a.sample} years old!"
```
```ruby
# After reading Hint
puts "Teddy is #{rand(20..200)} years old!"
```
# Further Exploration
"Modify this program to ask for a name, and then print the age for that person.
For an extra challenge, use "Teddy" as the name if no name is entered."
```ruby
puts 'What is your name?'
name = gets.chomp
name = 'Teddy' if name == ''
puts puts "#{name} is #{rand(20..200)} years old!"
```