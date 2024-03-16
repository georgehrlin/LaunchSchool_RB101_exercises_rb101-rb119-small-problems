# Understand the Problem
Write a method, `print_in_box`...
### Identify inputs and outputs
* Input: A string
* Output: Multiple lines of strings that make up a "box" with the input string at its centre
### Identify rules/clarify questions
* "You may assume that the input will always fit in your terminal window."
### Mental model
* When given an empty string, the method prints a box that is 5 lines long
  * Line 1 is `+--+`
  * Line 2 is `|  |`
  * Line 3 is `|  |`
  * Line 4 is `|  |`
  * Line 5 is `+--+`
  * Default line length is 4 characters
* When a string is provided:
  * Line 1 and 5 extend with the string's size number of `-`
  * Line 3 contains the string at its centre, with `| ` on its left and ` |` on its right
  * Line 2 and 4 extend with the string's size number of ` ` (empty space)
# Examples
```ruby
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
```
```ruby
print_in_box('')
+--+
|  |
|  |
|  |
+--+
```
# Data Structure
* Input is a string
* Output is 5 lines of strings
# Algorithm
1. Define a method, `print_in_box`, with `input` as the parameter
2. Output `+--+` with as many additional `-` as the size of `input`
3. Output `|  |` with as many additional emtpy spaces as the size of `input`
4. Output `|  |` with `input` at its centre
3. Output `|  |` with as many additional emtpy spaces as the size of `input`
2. Output `+--+` with as many additional `-` as the size of `input`
# Code
```ruby
def print_in_box(input)
  puts "+-#{'-' * input.length}-+"
  puts "| #{' ' * input.length} |"
  puts "| #{input} |"
  puts "| #{' ' * input.length} |"
  puts "+-#{'-' * input.length}-+"
end
```
# Official Answer
```ruby
def print_in_box(message)
  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end
```
# Further Exploration
"Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box."