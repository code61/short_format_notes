---
title: Arrays
---

An array is a way of storing a list of objects. Unlike in some other languages in ruby you don't need to specify which sort of object the array will hold - it can even hold objects of different types.

Arrays are written with square brackets.
{% highlight ruby %}
my_array = [1,2,3]

empty_array = []    # an array with no elements
{% endhighlight %}


{% exercise %}
Working with a partner, guess what each of the following expressions will give, then try them out in `irb`:

{% highlight ruby %}
a = [3, 39, 1, 0, 5]

a[1]
a.first
a[0]
a[5]

a[-1]
a[-5]
a.last

a[1..3]
a[1..-1]

b = []

a.empty?
b.empty?
a.length
b.length

a.include?(39)
a.include?(49)

a.reverse
a   # has this changed a?
a.reverse!
a   # has this changed a?

a.sort
a   # has this changed a?
a.sort!
a   # has this changed a?

a = [1, 2, 3, 4, 5]

a[3] = 6
a   # What is a now?

a[7] = 7
a   # What else has been added?

a << 9  # This one's important - you'll see it a lot

{% endhighlight %}
{% endexercise %}