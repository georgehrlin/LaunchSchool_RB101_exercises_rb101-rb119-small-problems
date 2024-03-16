print 'What is your age? '
age_current = gets.to_i

print 'At what age would you like to retire? '
age_retire = gets.to_i

years_diff = age_retire - age_current
year_current = Time.new.year
year_retire = year_current + years_diff

puts
puts "It's #{year_current}. You will retire in #{year_retire}."
puts "You have only #{years_diff} years of work to go!"