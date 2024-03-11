```ruby
require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)
```
I had to use `irb` to run the code to find its outputs:
```
-4712-01-01
2016-01-01
2016-05-01
2016-05-13
```

# Discussion
The documentation for `Date::civil` shows that its signature is:
```
civil([year=-4712[
       , month=1[
       , mday=1[
       , start=Date:ITALY]]]]) → date
```
This signature uses `[]` to show that all of the arguments are optional.

Note that the brackets are nested. Items inside the outermost bracket pairs can only be omitted if all of the innermost bracket pairs are omitted as well. Hence, if you omit the `month` argument, you must omit `mday` and `start`, but you must supply `year`.