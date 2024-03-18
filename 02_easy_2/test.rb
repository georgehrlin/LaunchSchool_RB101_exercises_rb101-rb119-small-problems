def negative(number)
  number.positive? ? -number : number
end

puts negative(5) == -5  # Output: true
puts negative(-3) == -3 # Output: true
puts negative(0) == 0   # Output: true