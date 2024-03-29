def print_in_box(message)
    horizontal_rule = "+#{'-' * 78}+"
    empty_line = "|#{' ' * 78}|"

    puts horizontal_rule
    puts empty_line

    words = message.split
    builder = ""

    while !words.empty?
      while !words.empty? && (((builder + words[0]).length) < 76)
        builder += (words.shift + " ")
      end

      puts "|#{builder.chop.center(78, ' ')}|"

      builder = ""
    end

    puts empty_line
    puts horizontal_rule
end

a = "Just one line."

b = "If you are the smartest person in the room, you are in the wrong room. Hang out with, and learn from people smarter than yourself. Even better, find smart people who will disagree with you."

c = "This line should have exactly seventy-six characters, so I am typing more !!"
puts c.length

print_in_box(a)
print_in_box(b)
print_in_box(c)
print_in_box('')