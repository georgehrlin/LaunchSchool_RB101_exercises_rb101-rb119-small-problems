# Understand the Problem
### Identify inputs and outputs
* Input: A positive integer
* Output: Returns a string made up of `'1'` and `'0'` that always starts with `'1'` and is of positive-integer long
### Identify rules/clarify questions
* None
### Mental model
* Concatenate an empty string and always starting with `1` first. When the last character of the string is `1`, conatenate `0`. Repeat this process input-integer-number of times.
# Examples
1
* `stringy(6)`
* Output: `#=> '101010'`

2
* `stringy(9)`
* Output: `#=> '101010101'`

3
* `stringy(0)`
* Otuput: `#=> ''`
# Data Structure
* Input is a positive integer
* Output is a string made up of `1` and `0` exclusively and in that order repeatedly
# Algorithm
1. Have `number` as the `stringy` method's parameter
2. Create an empty string `result` that will expand with `1` and `0` based on `number`
3. Repeat the following `number` of times
    * Is the character of the last index of `result` not `1`?
      * Yes: Concatenate `1`
      * No: Concatenate `0`
4. Return `result`

# Code
```ruby
def stringy(number)
  result = ''
  number.times do
    result[-1] != '1' ? result << '1' : result << '0'
  end
    result
end
```

# Official Answer
```ruby
def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1:0
    numbers << number
  end

  numbers.join
end
```
# Further Exploration
"Modify `stringy` so it takes an additional optional argument that defaults to `1`. If the method is called with this argument set to `0`, the method should return a String of alternating 0s and 1s, but starting with `0` instead of `1`.
```ruby
# Modifying my answer
def stringy(number, start_with = 1)
  result = ''

  if start_with == 1
    number.times do
      result[-1] != '1' ? result << '1' : result << '0'
    end
  elsif start_with == 0
    number.times do
      result[-1] != '0' ? result << '0' : result << '1'
    end
  end
  result
end

# Modifying official answer
def stringy(size, start_with = 1)
  numbers = []

  if start_with == 1
    size.times do |index|
      number = index.even? ? 1:0
      numbers << number
    end
  elsif start_with == 0
    size.times do |index|
      number = index.even? ? 0:1
      numbers << number
    end
  end

  numbers.join
end
```
# Cool Answer by Schoolmate
```ruby
# By Juliette Sinibardy
def stringy(int)
  Array.new(int) { |i| i.even? ? '1' : '0' }.join
end

# Further Exploration
def stringy(int, first = 1)
  second = first == 1 ? '0' : '1'
  Array.new(int) { |i| i.even? ? first.to_s : second }.join
end
```