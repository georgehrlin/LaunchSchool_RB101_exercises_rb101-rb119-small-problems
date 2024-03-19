a = ['apple', 'orange']
b = a * 2

p a # Output: ["apple", "orange"]
p b # Output: ["apple", "orange", "apple", "orange"]

b[1].upcase!

p a # Output: ["apple", "ORANGE"]
p b # Output: ["apple", "ORANGE", "apple", "ORANGE"]