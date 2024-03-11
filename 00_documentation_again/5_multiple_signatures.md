```ruby
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2}
```
I have to look up documentation for this one.
According to the documentation, the output is:
```ruby
nil
'beats me'
14
```
### *Incorrect*

# Solution
```ruby
a = %w(a b c d e)
puts a.fetch(7)
# index 7 outside of array bounds: -5...5 (IndexError)
puts a.fetch(7) { |index| index**2}
# 49
```

# Discussion
`Array#fetch` simply returns the element of an array by its dex, but it also does bounds checking (which `Array#[]` does not): It checks whether the specified element actually exists before fetching it, and raises an error if it does not.
The second and third forms of `Array#fetch` prevent an error from occuring if the indicated element does not exist by providing a default value or a block that returns an appropriate value.