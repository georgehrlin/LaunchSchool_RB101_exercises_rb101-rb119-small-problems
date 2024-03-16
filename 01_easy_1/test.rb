def centre_of(input)
  length = input.length
  mid_index = length / 2
  length.odd? ? input[mid_index] : "#{input[mid_index - 1]}#{input[mid_index]}"
end

p centre_of('I love ruby')   #=> 'e'
p centre_of('Launch School') #=> ' '
p centre_of('Launch')        #=> 'un'
p centre_of('Launchschool')  #=> 'hs'
p centre_of('x')             #=> 'x'