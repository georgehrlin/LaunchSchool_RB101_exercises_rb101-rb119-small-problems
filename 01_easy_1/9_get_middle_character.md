# Understand the Problem
Write a method, `centre_of`...
### Identify inputs and outputs
* Input: A non-empty string
* Output:
  * If the input string is of odd-number length, a string that is the character at the centre of the input string
  * If the input string is of even-number length, a string that are the two characters at the centre of the input string
### Identify rules/clarify questions
* None
### Mental model
* Output the middle character(s) by accessing with index
* Integer-divide the length of the input string by 2
  * For odd-number-length input strings, because integer-division in Ruby takes the floor of the result, I can access the middle character by directly using the division result as the target index
  * For even-number-length input strings, on top of accessing the second middle characters with the aforementioned method, I can access the first middle character by deducting 1 from the index from the first method
# Examples
```ruby
centre_of('I love ruby')   #=> 'e'
centre_of('Launch School') #=> ' '
centre_of('Launch')        #=> 'un'
centre_of('Launchschool')  #=> 'hs'
centre_of('x')             #=> 'x'
```
# Data Structure
* Input is a string
* Output is a string
# Algorithm
1. Define a method, `centre_of`, with `input` as the parameter
2. Return the character at index—length of `input` divded by 2—of `input` if the length of `input` is of odd-number-length
3. Return the concatenation of characters at indices—length of `input` divided by 2, and length of `input` divded by 2 minus 1—of `input` if `input` is of even-number-length
# Code
```ruby
def centre_of(input)
  length = input.length
  mid_index = length / 2
  length.odd? ? input[mid_index] : "#{input[mid_index - 1]}#{input[mid_index]}"
end
```
# Official Answer
```ruby
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end
```
`string[start, length]`
"When non-negative integer arguments `start` and `length` are given, the slice begins at character offset `start`, if it exists, and continues for `length` characters, if available."