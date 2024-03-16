# Understand the Problem
### Identify inputs and outputs
* Input 1 is a user input of a string, a noun
* Input 2 is a user input of a string, a verb
* Input 3 is a user input of a string, an adjective
* Input 4 is a user input of a string, an adverb
* Output is a string that includes the 4 inputs
### Identify rules/clarify questions
* None
### Mental model
* First, ask user for the four inputs
* Then, output a string that interpolates the four user inputs
# Examples
```
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an averb: quickly

Do you walk your blue dog quickly? That's hilarious!
```
# Data Structure
* Input 1 to 4 are strings
* Output is a string
# Algorithm
* Prompt user to enter a noun (string input 1)
* Prompt user to enter a verb (string input 2)
* Prompt user to enter an adjective (string input 3)
* Prompt user to enter an adverb (string input 4)
* Output a string that interpolates the four input strings
# Code
```ruby
print 'Enter a noun: '
noun = gets.chomp
print 'Enter a verb: '
verb = gets.chomp
print 'Enter an adjective: '
adjective = gets.chomp
print 'Enter an adverb: '
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
```
I used double quotation marks for the prompt statements, but because they are meant to not change I should have used single quotation marks instead.
# Official Answer
```ruby
print 'Enter a noun: '
noun = gets.chomp
print 'Enter a verb: '
verb = gets.chomp
print 'Enter an adjective: '
adjective = gets.chomp
print 'Enter an adverb: '
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{adverb} #{verb} over the lazy dog!"
sentence_3 = "I would love a #{adjective} #{noun} that #{verb} #{adverb} as a pet!"

puts [sentence_1, sentence_2, sentence_3].sample
```