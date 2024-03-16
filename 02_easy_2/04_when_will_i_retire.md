# Understand the Problem
### Identify inputs and outputs
* Input 1: User inputs a positive integer that is his/her age
* Input 2: User inputs a positive integer that is his/her retirement age
* Output 1: Output a string that includes the current year and the retirement year
* Output 2: Output a string that includes the number of years until retirement
### Identify rules/clarify questions
* None
### Mental model
* Ask user what is his/her current age
* Store user input
* Ask user what is his/her retirement age
* Store user input
* Calculate the year difference between current age and retirment age
* Add year difference to current year to find retirment year
* Output a message that shows current year and retirement year
* Output a message that shows the year difference
# Examples
```
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
```
# Data Structure
* Input 1 is a positive integer
* Input 2 is a positive integer
* Output 1 is a string
* Output 2 is a string
# Algorithm
1. Output a string that asks user for his/her age
2. Store user input as variable, `age_current`
3. Output a string that asks user for his/her retirment age
4. Store user input as variable, `age_retire`
5. Subtract `age_retire` by `age_current` to find `years_diff`
6. Retrieve current year and store it in a variable, `year_current`
7. Add `years_diff` to `year_current` to find `year_retire`
8. Output a string that shows `year_current` and `year_retire`
9. Output a string that shows `years_diff`
# Code
```ruby
print 'What is your age? '
age_current = gets.to_i

print 'At what age would you like to retire? '
age_retire = gets.to_i

years_diff = age_retire - age_current
year_current = Time.new.year
year_retire = year_current + years_diff

puts # There is a blank line in example
puts "It's #{year_current}. You will retire in #{year_retire}."
puts "You have only #{years_diff} years of work to go!"
```