print 'What is your name? '
name = gets.chomp

standard = "Hello #{name}."
scream = "HELLO #{name.upcase[0..-2]}. WHY ARE WE SCREAMING?"

name[-1] == '!' ? (puts scream) : (puts standard)