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