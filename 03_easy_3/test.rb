num1, num2 = %w[first second].map do |position|
  puts "==> Enter the #{position} number:"
gets.to_i
end

%w[+ - * / % **].each do |operator|
  equation = "#{num1} #{operator} #{num2}"
  puts "==> #{equation} = #{eval(equation)}"
end