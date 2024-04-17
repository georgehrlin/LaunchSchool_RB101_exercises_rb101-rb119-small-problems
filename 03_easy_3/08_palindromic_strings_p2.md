# Understand the Problem
"Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the `plindrome?` method you wrote in the previous exercise."
### Identify inputs and outputs
- Input: A string
- Output: Boolean values
### Identify rules/clarify questions
- Method should be case-insensitive
- Method should ignore all non-alphanumeric characters
### Mental model
Because the `palindrome?` method must now be case-insensitive and ignore all non-alphanumeric characters, the input string characters must be all lowercase (or all uppercase, which doesn't matter) and contain no non-alphamueric characters before `palindrome?` can be called on the input string.
Turning the input string characters all lowercase is simple to do with `String#downcase`.
To remove all the non-alphanumeric characters from the input string, I plan to use a collection (likely an array) that contains all of the alphanumeric characters. By iterating through all the characters of the input string, I can check if each character is a member of the collection. If the character is not, I can remove it from the input string. (I did not come up with this idea. I was "inspired" after skimming solutions by submitted by other students.)
# Examples
```ruby
real_palindrome?('madam') == true
real_palindrome?('Madam') == true
real_palindrome?("Madam, I'm Adam") == true
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
```
# Data Structure
- Input is a string object
- Output is a boolean value
# Algorithm
- Initialize a constant, `ALPHANUM`, that points to an array with all the individual alphanumeric characters as elements
- Define a method, `real_palindrome?`, that takes a string as argument and has `input` as parameter
- Reassign the return value of calling `downcase` on `input` to `input`
- Iterate through the input string. In each iteration, check whether the character is included in `ALPHANUM`. If it is not, remove it from the string
- Return the result of checking whether `input` is equivalent to the return value of `input.reverse`

# Code
```ruby
ALPHANUM = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9)
# I did not come up with the idea to use a collection of alphanumeric
# characters to sort out the non-alphanumeric characters in the input string
# until I skimmed a fellow student, AJ Calrke's, answer.

def real_palindrome?(input)
  input = input.downcase
  input.each_char do |char|
    input.delete!(char) unless (ALPHANUM.include?(char))
  end
  input == input.reverse
end
```
### Review
The official solution uses something called multiple character selector, `^a-z0-9`. I had to look it up by asking Phind AI because the Ruby documentation doesn't say much about it.
# Official Solution
```ruby
def real_palindrome?(input)
  putni = input.downcase.delete('^a-z0-9').reverse
  putni == input.downcase.delete('^a-z0-9')
end
# This isn't precisely the official solution.
# It is my own modified version of it.
```
# Cool Solutions by Others
```ruby
def real_palindrome?(string)
  alphanums = [('0'..'9').to_a, ('a'..'z').to_a].flatten
  clean_str = string.downcase.chars.select { |str| alphanums.include?(str) }
  clean_str == clean_str.reverse
end
```