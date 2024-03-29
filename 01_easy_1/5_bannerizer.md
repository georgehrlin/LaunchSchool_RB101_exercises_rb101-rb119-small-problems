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
## Understand the Problem
Write a method, `print_in_box`, that...
### Identify inputs and outputs
* Input: A string of a certain length
* Output:
   * 5 or more lines of strings that together form a box with input string at the box's centre
   * If output line with input string is longer than 80 characters, wrap rest of input string but still keeping every line of input string centred
### Identify rules/clarify questions
* Every line of output can only be 80-character in length maximum including the banner characters
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
## Examples
```
a = "If you are the smartest person in the room, you are in the wrong room. Hang out with, and learn from people smarter than yourself. Even better, find smart people who will disagree with you."

print_in_box(a)

# Output:
+------------------------------------------------------------------------------+
|                                                                              |
| If you are the smartest person in the room, you are in the wrong room. Hang  |
|   out with, and learn from people smarter than yourself. Even better, find   |
|                   smart people who will disagree with you.                   |
|                                                                              |
+------------------------------------------------------------------------------+
```
## Code
```ruby
def print_in_box(message)
  if message.length <= 76
    horizontal_rule = "+#{'-' * (message.size + 2)}+"
    empty_line = "|#{' ' * (message.size + 2)}|"

    puts horizontal_rule
    puts empty_line
    puts "| #{message} |"
    puts empty_line
    puts horizontal_rule
  else
    horizontal_rule = "+#{'-' * 78}+"
    empty_line = "|#{' ' * 78}|"

    puts horizontal_rule
    puts empty_line

    words = message.split
    builder = ""

    while !words.empty?
      while !words.empty? && (((builder + words[0]).length) < 76)
        builder += (words.shift + " ")
      end

      puts "|#{builder.chop.center(78, ' ')}|"

      builder = ""
    end

    puts empty_line
    puts horizontal_rule
  end
end
```
### Comment
I know my method is too long and redundant. I can simplify the code, but frankly I am just happy that it at least works I am lazy and I want to move on.