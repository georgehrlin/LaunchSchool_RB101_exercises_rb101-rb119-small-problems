```ruby
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
```
Without looking up documentation, I think this code will output:
```ruby
[4, 5, 3, 6]
```
This is because the definition of `my_method` demands at least two arguments be supplied when the method is called. I am guessing that calling `my_method` with only three arguments `4`, `5`, and `6` would have Ruby treating `6` as the supplied value for the last parameter, `d`. `5` would be treated as the supplied value for the second parameter, `b` based on its position in the arugment. Therefore, no value is supplied for the parameter `c`, which would lead to Ruby using its default value `3`.

### *Correct*

# Discussion
The documentation shows that positional arguments are filled out first, then the default arguments are set with any values supplied, and, finally, default values are applied to anything remaining.

In this exercise, `4`, `5`, and `6` are assigned to the positional arguments `a`, `b`, and `d` respectively. Note that `5` overrides the default value for `b`, but `c` is not set to any of the listed values. `c` is assigned its default value, `3`, instead.