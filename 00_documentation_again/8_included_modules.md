```ruby
a = [5, 9, 3, 11]
puts a.min
```
I am asked to "print the two smallest values in the `Array`."
According to the 2.3.0 Ruby documentation on `Enumerable#min`, "If the **n** argument is given, minimum **n** elements are returned as a sorted array." Therefore:
```ruby
a = [5, 9, 3, 11]
puts a.min(2)
```
### *Correct*

# Discussion
In the Ruby 2.3.0 documentation, you cannot find any mentioning of `#min` in `Array` or `Object`.

Some languages have a feature called **multiple inheritance** (a.k.a., **MI**). With MI, a class can inheirt from two or more immediate superclasses. Inheriting from multiple superclasses has pitfalls. To avoid those pitfalls, Ruby does not allow MI.

Ruby uses something like MI, but without the worst of its pitfalls. What Ruby uses is called **mix-in modules**, or simply **mix-ins**. Mix-ins provide a way for classes of different types to share behaviours without using inheriance.

A class can use a mix-in module by using the `include` method. Once included, all the mix-in's methods become available to objects of the class.

One of the most commonly used mix-ins is the `Enumerable` module. It provides much of the functionality needed to iterate through collections. `Enumerable` is listed under the `Array` class documentation's Included Modules. Inside `Enumerable`'s documentation, you can find `#min`.