# Understand the Problem
"Write a method that takes a string argument, and returns `true` if all of the alphabetic characters inside the string are uppercase, `false` otherwise. Characters that are not alphabetic should be ignored."
### Identify inputs and outputs
- Input: A string
- Output: `true` or `false`
### Identify rules/clarify questions
- Returns `true` if all of the alphabetic characters inside the string are uppercase, `false` otherwise
- Non-alphabetic characters should be ignored
### Mental model
Once I got rid of all the lowercase letters of the input string, if the input string only had uppercase letters to begin with, the input string would be the same.

However, if the input string had any lowercase letters in the first place, the string after would be different.

I can simply compare the before and after strings to find out if the input string had only uppercase letters or not.
# Examples
```ruby
uppercase?('t') == false          # => true
uppercase?('T') == true           # => true
uppercase?('Four Score') == false # => true
uppercase?('FOUR SCORE') == true  # => true
uppercase?('4SCORE!') == true     # => true
uppercase?('') == true            # => true
```
# Data Structure
- Input is a string object
- Output is a bolean objet
# Algorithm
- Remove all the lowercase letters from the input string
- Compare the string after the removal with the original string
# Code
```ruby
def uppercase?(string)
  string == string.delete('a-z')
end
```
# Official Solution
```ruby
def uppercase?(string)
  string == string.upcase
end
# This solution is simpler, both its logic and in code.
```
# Further Exploration
"Food for thought: in our examples, we show that `uppercase?` should return `true` if the argument is an empty string. Would it make sense to renturn `false` instead? Why or why not?"

The condition is: "`true` if all of the alphabetic characters inside the string are uppercase, `false` otherwise."
In an empty string, there is no alphabetic characters. The evaluation of an empty string using our criteria lies in the gray zone. If the result has to be binary, I think either `true` or `false` makes sense. There is not even a single alphabetic character, so technically there is no ground to make such judgement.