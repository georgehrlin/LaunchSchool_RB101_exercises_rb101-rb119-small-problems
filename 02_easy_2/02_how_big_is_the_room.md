# Understand the Problem
### Identify inputs and outputs
* Input 1: A positive number as length of the room
* Input 2: A positive number as width of the room
* Output: A string that interpolates the products of input1 and input2 in square meters and sqaure feet
### Identify rules/clarify questions
* "Do not worry about validating the input at this time."
### Mental model
* Get user input for length of the room in meters
* Get user input for width of the room in meters 
* Calculate the area of the room in both sqaure meters and sqaure feet
* Interpolate the results and output them in a string
# Examples
```
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
```
# Data Structure
* Input 1 is a positive number
* Input 2 is a positive number
* Output is a string
# Algorithm
1. Output a string that prompts user for the length of the room in meters
2. Get user input and store it in a variable
3. Output a string that prompts user for the width of the room in meters
4. Get user input and store it in a variable
5. Convert the length and width from meters to feet and store them in variables
6. Calculate the area of the room in sqaure meters and square feet by multiplying the width and length and store them in variables
7. Output a string that interpolates the areas of the room in both units
# Code
```ruby
puts 'Enter the length of the room in meters:'
l_m = gets.chomp.to_f
puts 'Enter the width of the room in meters:'
w_m = gets.chomp.to_f

area_m = (l_m * w_m).round(2)
area_f = (area_m * 10.7639).round(2)

puts "The area of the room is #{area_m} square meters (#{area_f} square feet)."
```
### Review
I didn't need `#chomp` for my inputs in this case because `#to_f` ignores the newline character.
It's better to store the conversion value from sqaure meters to sqaure feet in a constant, as the official solution does. "This is good practice any time you have a number whose meaning is not immediately obvious upon seeing it."
# Official Solution
```ruby
SQMETERS_TO_SQFEET = 10.7639

puts 'Enter the length of the room in meters: '
length = gets.to_f

puts 'Enter the width of the room in meters: '
width = gets.to_f

sqaure_meters = (length * width).round(2)
sqaure_feet = (sqaure_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
     "square meters (#{sqaure_feet} sqaure feet)."
```
# Further Exploration
"Modify this program to ask for the input measurements in feet, and display the results in sqaure feet, sqarue inches, and sqaure centimeters."
```ruby
SQFT_TO_SQIN = 144
SQFT_TO_SQCM = 929.03

puts '=> Enter the length of the room in feet:'
l_f = gets.to_f

puts '=> Enter the width of the room in feet:'
w_f = gets.to_f

area_f = (l_f * w_f).round(2)
area_in = (area_f * SQFT_TO_SQIN).round(2)
area_cm = (area_f * SQFT_TO_SQCM).round(2)

puts "=> The area of the room is:
   #{area_f} sqaure feet;
   #{area_in} sqaure inches;
   #{area_cm} sqaure centimeters."
```