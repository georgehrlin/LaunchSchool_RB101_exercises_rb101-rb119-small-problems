# Understand the Problem
Write a method, `triangle`, that...
### Identify inputs and outputs
* Input: A positive integer
* Output: After a line of nothing, multiple lines of strings that make up a right triangle of `*`, with the integer number of `*` on all of its sides
### Identify rules/clarify questions
* "The hypotenuse of the triangle should have one end at the lower-left of the triangle, and the other end at the upper-right."
### Mental model
1. Output `integer-number - 0` of `' '` (empty spaces) and 0 `*`
2. Output `integer-number - 1` of `' '` (empty spaces) and 1 `*`
3. Output `integer-number - 2` of `' '` (empty spaces) and 2 `*`
4. Output `integer-number - 3` of `' '` (empty spaces) and 3 `*`

(Repeat above as until each side has `integer-number` of `*`.)
# Examples
```ruby
triangle(5)

    *
   **
  ***
 ****
*****
```
```ruby
triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
```
# Data Structure
* Input is a positive integer
* Output is lines of strings
# Algorithm
1. Define a method `triangle` with `size` as the parameter
2. Repeat the following as many times as `size + 1`:
  * Output `size` number of ` ` and `0` number of `*`
  * Output `size - 1` number of ` ` and `0 + 1` number of `*`
  * Output `size - 2` number of ` ` and `0 + 2` number of `*`
  * ...
  * Output `0` number of ` ` and `size` number of `*`
# Code
```ruby
def triangle(size)
  counter = size + 1
  (counter).times do |n|
    puts "#{' ' * (size - n)}#{'*' * n}"
  end
end
```
# Official Answer
(The official answer does not take the empty line right after the invocation of the method into consideration, which I did.)
```ruby
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end
```
# Further Exploration
"Try modifying your solution so it prints the triangle upside down from its current solution.
Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid."
```ruby
def triangle(num, corner_up_down = 'down', corner_left_right = 'right')
  if corner_up_down == 'down'
    first = num - 1
    second = 1

    if corner_left_right == 'right'
      num.times do |n|
        puts (' ' * first) + ('*' * second)
        first -= 1
        second += 1
      end
    elsif corner_left_right == 'left'
      num.times do |n|
        puts ('*' * second) + (' ' * first)
        first -= 1
        second += 1
      end
    end

  elsif corner_up_down == 'up'
    first = num
    second = 0
    if corner_left_right == 'right'
      num.times do |n|
        puts (' ' * second) + ('*' * first)
        first -= 1
        second += 1
      end
    elsif corner_left_right == 'left'
      num.times do |n|
        puts ('*' * first) + (' ' * first)
        first -= 1
        second += 1
      end
    end
  end
end
```
# Cool Answer by Schoolmate
```ruby
# By Bob Rodes
def triangle(size)
  1.upto(size) { |n| puts ('*' * n).rjust(size, ' ')}
end

# Further Exploration
def triangle(size, right_angle)
  case right_angle
  when 'top_left'
    size.downto(1) { |n| puts ('*' * n) }
  when 'top_right'
    size.downto(1) { |n| puts ('*' * n).rjust(size, ' ') }
  when 'bottom_left'
    1.upto(size) { |n| puts ('*' * n) }
  when 'bottom_right'
    1.upto(size) { |n| puts ('*' * n).rjust(size, ' ') }
  end
end
```