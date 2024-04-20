The answer is so straight-forward that I don't need to use PEDAC.
```ruby
def palindromic_number?(n)
  n.to_s == n.to_s.reverse
end
```
# Further Exploration
"Suppose your number begins with one or more 0s. Will your method still work? Why or why not? Is there any way to address this?"

The method will not work if a number begins with one or more 0s. By calling `to_s` on a number that begins with some 0s, the returned string would be the number without the beignning 0s.
### Solution by Others
(By Bob Rodes)

"It depends on what is meant by 'work.' Putting a zero in front of a number means that it is octal, and Ruby translates the number to decimal before you can evaluate it. So, `013` might be a palindrome, because in decimal it is `11`."

"But the question doesn't clarify whether or not this meand that `013` 'works.' By 'working,' do we mean that our method, when provided a literal octal number as an argument, correctly determines whether its decimal equivalent is a palindrome? If so, the answer is yes. If 'work' means that the method can tell whether the actual digits of a literal octal number are a palindrome, then the answer is no. If it means that the method can take a number expressed as a string, but with leading zeros, then the answer is no, but it could be made to do so."