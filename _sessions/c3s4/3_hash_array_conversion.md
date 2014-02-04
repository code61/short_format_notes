---
title: Arrays and back
---

This page is more advanced. This stuff is sometimes useful, but don't worry if you want to skip over it the first time through.

### Converting to arrays and back

You can convert a hash to an array using the `to_a` method and use the `Hash[ ]` syntax to convert it back:

{% highlight ruby %}
h = {'a' => 1, 'b' => 2}

h.to_a #=> [['a', 1], ['b', 2]]

h2 = Hash[['a', 1], ['b', 2]]
{% endhighlight %}

The `Hash[ ]` is also useful for creating a hash from arrays of keys and values (which is surprisingly useful).

{% highlight ruby %}
keys = [1, 2, 3]
values = ['one', 'two', 'three']

# use Array#zip to get the arrays in the right format
zipped = keys.zip(values)  #=> [[1, 'one'], [2, 'two'], [3, 'three']]

h = Hash[zipped]  #=> {1 => 'one', 2 => 'two', 3 => 'three'}
{% endhighlight %}

{% exercise %}
(Optional)
1. Work through `array_conversion_examples.rb`, copying and pasting into irb.
2. See if you can do the challenge at the end.
{% endexercise %}