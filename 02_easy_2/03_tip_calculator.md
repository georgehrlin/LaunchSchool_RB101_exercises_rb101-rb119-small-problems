# Understand the Problem
Create a simple tip calculator...
### Identify inputs and outputs
* Input 1: User inputs a positive number as the bill amount
* Input 2: User inputs a positive number as the tip rate (%)
* Output 1: Output a string that displays the bill amount
* Output 2: Output a string that displays total amount of the bill
### Identify rules/clarify questions
* None
### Mental model
* Prompt user for the bill amount
* Store the bill amount in a variable
* Prompt user for the tip rate
* Store the tip rate in a variable
* Caculate the tip amount and store it in a variable
* Calculate the total bill amount and store it in a variable
* Output a string that shows the tip amount
* Output a string that shows the total bill amount
# Examples
```
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
```
# Data Structure
* Input 1 is a positive number
* Input 2 is a positive number
* Output 1 is a string
* Output 2 is a string
# Algorithm
1. Prompt user for the bill amount
2. Store it in a variable, `bill`
3. Prompt user for the tip rate
4. Store it in a variable, `tip_rate`
5. Calculate the tip amount by multiplying `bill` and `tip_rate`, store it in a variable, `tip_amount`
6. Calcualte the total bill amount by adding `bill` and `tip_amount`, store it in a variable, `bill_total`
7. Output a string that interpolates `tip_amount`
8. Output a string that interpolates `bill_total`
# Code
```ruby
print 'What is the bill? '
bill = gets.to_f
print 'What is the tip percentage? '
tip_rate = gets.to_f

tip_amount = (bill * (tip_rate / 100)).round(2)
bill_total = (bill + tip_amount)

puts # There is a blank line here in example
puts "The tip is $#{tip_amount}"
puts "The total is $#{bill_total}"
```
# Further Exploration
"Our solution prints the results as `$30.0` and `$230.0` instead of the more usual `$30.00` and `$230.00`. Modify your solution so it always prints the results with 2 decimal places."
```ruby
print 'What is the bill? '
bill = gets.to_f
print 'What is the tip percentage? '
tip_rate = gets.to_f

tip_amount = (bill * (tip_rate / 100)).round(2)
bill_total = (bill + tip_amount)

puts # There is a blank line here in example
puts "The tip is $#{sprintf('%.2f', tip_amount)}"
puts "The total is $#{format('%.2f', bill_total)}"
```