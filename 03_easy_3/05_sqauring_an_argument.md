# Understand the Problem
Write a method, `sqaure`, that...
### Identify inputs and outputs
* Input: A number
* Output: A number, input sqaured
### Identify rules/clarify questions
* Use the `multiply` method from the previous question
### Mental model
* Define a method, `sqaure`
* Because squaring a number is multiplying it by itself, call `multiply` with `sqaure`'s argument as both of its inputs
# Examples
```ruby
sqaure(5)  #=> 25
sqaure(-8) #=> 64
```
# Data Structure
* Input is a number
* Ouput is a number
# Algorithm
1. Define a method, `sqare`, that takes `num` as its parameter
2. Call `multiply` with `num` as its two arguments
# Code
```ruby
def multiply(a, b)
  a * b
end

def square(num)
  multiply(num, num)
end
```
# Further Exploration
"What if we wanted to generalize this method to a 'power to the n' type method: cubed, to the fourth power, to the fifth power, etc.? How would we go about doing so while still using the `multiply` method?"
```ruby
def exponentiation(num, power)
  if power == 0
    1
  elsif power == 1
    multiply(num, power)
  else
    x = multiply(num, num)
    (power - 2).times { x = multiply(num, x) }
    x
  end
end
```
I came up with this. It's not pretty, but it works!
("It ain't much, but it's honest work.")
# Cool Solution by Others
```ruby
# By Nick Gebelle
# Modified
def exponentiation(num, power)
  x = 1
  power.times { x = multiply(x, num) }
  x
end
```
I was on the right track but I failed to see the direct connection between `power` and `x`.
```
1
m(2, 1)
m(2, m(2, 1)) # I didn't see I could simply have m(2, 1) inside m(2, 2).
m(2, m(2, m(2, 1)))
m(2, m(2, m(2, m(2, 1))))
```