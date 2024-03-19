# Understand the Problem
Write a program that...
### Identify inputs and outputs
* Input: User input, a string of a word or multiple words
* Output: A string that includes the number of characters in input
### Identify rules/clarify questions
* "Spaces should not be counted as a character"
### Mental model
* Initialize a counter
* Iterate through input string
* Increase counter by 1 if iteration is a character other than a space
* Output counter
# Examples
```
Please write word or multiple words: walk
There are 4 characters in "walk".
```
```
Please write word or multiple words: walk, don't run
There are 13 characters in "walk, don't run".
```
# Data Structure
* Input is a string
* Output is a string with a integer interpolated
# Algorithm
1. Ouput a string that prompts user for input
2. Store input in a variable
3. Initialize a counter, `counter`, that points to `0`
4. Iterate through input string
   * If character is not ' ', `counter += 1`
5. Ouput a string with `counter` interpolated
# Code
```ruby
# I came up with this solution first without following the mental model
print 'Please write word or multiple words: '
input = gets.chomp

puts "There are #{input.delete(' ').length} characters in \"#{input}\"."
```
```ruby
# After method hunting
print 'Please write word or multiple words: '
input = gets.chomp

counter = 0
input.each_char { |char| counter += 1 if char != ' '}

puts "There are #{counter} characters in \"#{input}\"."
```
```ruby
# After method hunting
print 'Please write word or multiple words: '
input = gets.chomp
input_arr = input.chars

counter = 0
input_arr.each { |char| counter += 1 if char != ' '}

puts "There are #{counter} characters in \"#{input}\"."
```
### Review
* I did not know how to iterate over a string as I cannot just call `#each` on a string
* Instead, after method hunting, I found that I can call `String#each_char` to iterate through each character of the string
* I can also call `String#chars` to return an array
# Cool Solutions by Others
```ruby
# By Rafael Dwan
# modified & condensed
input = gets.chomp
number_of_characters = input.split.join.length
```
```ruby
# By David Newton
# modified & condensed
input = gets.chomp
number_of_characters = input.length - input.count(' ')
```
```ruby
# By Mark Travis Linville
# modified & condensed
input = gets.chomp
number_of_characters = input.gsub(' ', '').length
```