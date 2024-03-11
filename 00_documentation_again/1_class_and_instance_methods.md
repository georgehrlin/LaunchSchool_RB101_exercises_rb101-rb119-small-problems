`File::pah` is a public class method for the class `File`. It "returns the string representation of the path".
```ruby
File.path("/dev/null") #=> "/dev/null"
```
`File#path` is a public instance method. It "returns the pathname used to create *file* as a string.
```ruby
File.new("/tmp/../tmp/xxx", "w").path #=> "/tmp/../tmp/xxx"
```
### *Incomplete*

# Official Answer
Class methods are called on the class, while instance methods are called on objects.

Thus:
```ruby
puts File.path('bin')
```
calls the class method `File::path` since we are calling it on the `File` class.

On ther other hand:
```ruby
f = File.new('my-file.txt')
puts f.path
```
calls the instance method `File#path` since we are calling it on an object of the `File` class, namely `f`.