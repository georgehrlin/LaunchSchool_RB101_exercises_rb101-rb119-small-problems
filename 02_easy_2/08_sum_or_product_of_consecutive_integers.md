# Understand the Problem
Write a program that:
1. Asks user to enter a positive integer
2. Asks user whether to output the sum or product of all numbers from 1 to integer
3. Output sum or product
### Identify inputs and outputs
* Input 1: User inputs a positive integer
* Input 2: User inputs `'s'` to ask for sum, or `'p'` to ask for product
* Output: Output either sum or product of 1 to integer
### Identify rules/clarify questions
* None
### Mental model
* Prompt user for a positive integer
* Store positive integer
* Prompt user to input `'s'` for sum or `'p'` for prouct
  * If user input is `'s'`
    * Iterate through 1 to positive integer, adding one number after another
    * Output sum
  * If user input is `'p'`
    * Iterate through 1 to positive integer, multiplying one number after another
    * Ouput product
# Examples
```
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.
```
```
>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
```
# Data Structure
* Input 1 is a positive integer
* Input 2 is a string, `'s'` or `'p'`
* Output is a string with a positive integer interpolated
# Algorithm
1. Ouput a string to prompt user for a positive integer
2. Store user input in a variable, `target`
3. Output a string to prompt user for `'s'` or `'p'`
  * If user input `'s'`
    * Initialize a variable `sum` that poitns to `0`
    * Iterate through collection of 1 to `target`
    * Add each number of collection to `sum`
    * Return `sum`
  * If user input `'p'`
    * Initialize a variable `product` that points to `1`
    * Iterate through collection of 1 to `target`
    * Multiply `product` with each number of collection
    * Return `product`
# Code
```ruby
puts '>> Please enter an integer greater than 0:'
target = gets.to_i

puts '>> Enter \'s\' to computer the sum, \'p\' to compute the product.'
sum_or_product = gets.chomp

sum = 0
product = 1

if sum_or_product == 's'
  (1..target).each { |n| sum += n}
  puts "The sum of the integers between 1 and #{target} is #{sum}."
elsif sum_or_product == 'p'
  (1..target).each { |n| product *= n}
  puts "The product of the integers between 1 and #{target} is #{product}."
end
```
# Futher Exploration
"A more rubyish way of computing sums and products is with the `Enumerable#inject` method. `#inject` is a very useful method, but if you've never used it before, it can be difficult to understand."

"Try to use `#inject` in your solution to this problem."
```ruby
puts '>> Please enter an integer greater than 0:'
target = gets.to_i

puts '>> Enter \'s\' to computer the sum, \'p\' to compute the product.'
sum_or_product = gets.chomp

if sum_or_product == 's'
  sum = (1..target).inject(:+)
  puts "The sum of the integers between 1 and #{target} is #{sum}."
elsif sum_or_product == 'p'
  product = (1..target).inject(:*)
  puts "The product of the integers between 1 and #{target} is #{product}."
end
```
# Cool Solution by Others
```
# By Anthony Bartl
# Combining ternary operator

result = (1..number).reduce(sum_or_product == 's' ? :+ : :*)

puts "The #{sum_or_product == 's' ? 'sum' : 'product'} of the integers between 1 and #{number} is #{result}."
```