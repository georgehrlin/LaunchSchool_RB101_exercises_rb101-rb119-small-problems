```ruby
5.step(to: 10, by: 3) { |value| puts value }
```
After reading the documentation, I think the output is:
```
5
8
```
As a side note, this code returns:
```
=> 5
```
### *Correct*

# Discussion
`#step` is described in the `Numeric` class documentation.
In this version of `Numeric#step`, it takes two **keyword arguments** (a.k.a. **named arguments**), `:by` and `:to`. (Keyword argument names are symbols.)
This code can be simplified to:
```ruby
5.step(10, 3) { |value| puts value }
```