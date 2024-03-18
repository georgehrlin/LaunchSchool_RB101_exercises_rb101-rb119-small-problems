```ruby
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
```
The output will be:
```
Alice
Bob
```
`puts name` outputs `Alice` because the variable `name` was reassigned to a different string on line 3.
`puts save_name` still outputs `Bob` even after `name` was reassigned because the variable `save_name` still points to `Bob`.

---
```ruby
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
```
The output will be:
```
Bob!
Bob!
```
In this example, both variables `name` and `save_name` point to the same string throughout the entire example. The string that they point to, `Bob`, was mutated by the method `String#upcase!` on line 3. Then, line 4 outputs `Bob!` and `Bob!`.
# Official Solution
(I bet I was high or something when I did this question.)

I got the idea of the question right, but somehow I forgot what `String#upcase!` does. It capitalizes all the characters in a string, not adds a `!` at the end!