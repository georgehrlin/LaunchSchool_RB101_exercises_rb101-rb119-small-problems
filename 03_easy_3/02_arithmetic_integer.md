# Understand the Problem
Write a program that...
### Identify inputs and outputs
* Input 1: User input, a positive integer
* Input 2: User input, a positive integer
* Output 1: Addition of input 1 and 2, and result
* Output 2: Subtraction of input 1 and 2, and result
* Output 3: Multiplication of input 1 and 2, and result
* Output 4: Division of input 1 and 2, and result
* Output 5: Modulo of input 1 and 2, and result
* Output 6: Exponentiation of input 1 and 2, and result
### Identify rules/clarify questions
* "Do not worry about validating the input."
### Mental model
* Prompt user to input positive integer 1
* Prompt user to input positive integer 2
* Output addition of input 1 and 2, and its result
* Output subtraction of input 1 and 2, and its result
* Output multiplication of input 1 and 2, and its result
* Output division of input 1 and 2, and its result
* Output modulo of input 1 and 2, and it sresult
* Output exponentiation of input 1 and 2, and its result
# Examples
```
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103
```
# Data Structure
* Input 1 and 2 are both a positive integer
* Output 1 to 6 are strings
# Algorithm
1. Output a string to prompt user to enter a positive integer
   * Store integer in a variable
2. Output a string to prompt user to enter a positive integer
   * Store integer in a variable
3. Output a string that interpolates integer 1 and 2 and their addition result
4. Output a string that interpolates integer 1 and 2 and their subtraction result
5. Output a string that interpolates integer 1 and 2 and their multiplication result
6. Output a string that interpolates integer 1 and 2 and their division result
7. Output a string that interpolates integer 1 and 2 and their modulo result
8. Output a string that interpolates integer 1 and 2 and their exponentiation result
# Code
```ruby
puts '==> Enter the first number:'
num1 = gets.to_i

puts '==> Enter the second number:'
num2 = gets.to_i

puts "==> #{num1} + #{num2} = #{num1 + num2}"
puts "==> #{num1} - #{num2} = #{num1 - num2}"
puts "==> #{num1} * #{num2} = #{num1 * num2}"
puts "==> #{num1} / #{num2} = #{num1 / num2}"
puts "==> #{num1} % #{num2} = #{num1 % num2}"
puts "==> #{num1} ** #{num2} = #{num1 ** num2}"
```
### Additional Attempt After Viewing Solutions by Others
```ruby
# Using Kernel#public_send
puts '==> Enter the first number:'
num1 = gets.to_i

puts '==> Enter the second number:'
num2 = gets.to_i

ops = {'+'  => :+,
       '-'  => :-,
       '*'  => :*,
       '/'  => :/,
       '%'  => :%,
       '**' => :**}

ops.each do |sign, op|
  puts "==> #{num1} #{sign} #{num2} = #{num1.public_send(op, num2)}" 
end
```
"`Kernel#public_send(symbol [, args...]) → obj` invokes the method identified by *symbol*, passing it any arguments specified. Unlike `Kernel#send`, `public_send` calls public methods only."
# Cool Solutions by Others
```ruby
# By Nick Johnson
# Using Kernel#eval
num1, num2 = %w[first second].map do |position|
  puts "==> Enter the #{position} number:"
gets.to_i
end

%w[+ - * / % **].each do |operator|
  equation = "#{num1} #{operator} #{num2}"
  puts "==> #{equation} = #{eval(equation)}"
end
```
```ruby
# By Matthew Guilliams
# Using Enumerable#reduce
OPERATORS = %i[+ - * / % **]

def prompt(msg)
  puts "==> #{msg}"
end

prompt 'Enter the first number:'
first = gets.to_i
prompt 'Enter the second number:'
second = gets.to_i

OPERATORS.each do |operation|
  calculation = [first, second].reduce(operation)
  propmt "#{first} #{operation} #{second} = #{calculation}"
end
```