# Understand the Problem
### Identify inputs and outputs
* Input 1: A user input string that is his/her name
* Output 1: Output a string that greets user
### Identify rules/clarify questions
* "If the usere writes `"name!"` then the computer yells back to the user."
### Mental model
* Ask user for his/her name
* Store user input
* Check whether there is a `!` at the end of input
* Output a greeting message that includes name
# Examples
```
What is your name? Bob
Hello Bob.
```
```
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
```
# Data Structure
* Input 1 is a string
* Output 1 is a string
# Algorithm
1. Output a string that asks user for his/her name
2. Store input in a variable, `name`
3. Check if the last character of `name` is `!`
  * If there it isn't, output a greeting message string with `name`
  * If there is, output a greeting message that contains only capitalized letters with `name`
# Code
```ruby
print 'What is your name? '
name = gets.chomp

standard = "Hello #{name}."
scream = "HELLO #{name.upcase[0...-1]}. WHY ARE WE SCREAMING?"

name[-1] == '!' ? (puts scream) : (puts standard)
```
### Review
Instead of `name.upcase[0...-1]`, I can simply use `name.chop` to remove the last character. `String#chop`, like `String#chomp`, "returns a new string copied from `self`, with trailing characters possibly removed". If there is no `'\r'` or `'\n'`, it simply removes the last character if there is one. 

I could have also used `String#include?('!')` instead of a conditional statement with `name[-1] == '!'`.
# Official Solution
```ruby
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
```