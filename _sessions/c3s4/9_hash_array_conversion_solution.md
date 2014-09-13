---
title: (Ext) Exercise summary
---
It's easy to convert a `hash` into an `array`.
{% highlight ruby %}
h = {'a'=>1, 'b'=>2, 'c'=>3}

a = h.to_a
# => [["a", 1], ["b", 2], ["c", 3]] 
{% endhighlight %}
To convert back from an `array` to a `hash`, use 
{% highlight ruby %}
h=Hash[a]
# => {"a"=>1, "b"=>2, "c"=>3} 
{% endhighlight %}

You can unpack a `hash` into its keys and values with the `.keys` and `.values` methods

{% highlight ruby %}
h = {'one'=>1, 'two'=>2, 'three'=>3}

keys = h.keys
#=> ["one", "two", "three"] 
values = h.values
#=> [1, 2, 3] 


{% endhighlight %}

and put it back together with 

{% highlight ruby %}
h = Hash[keys.zip(values)]

# => {"one"=>1, "two"=>2, "three"=>3} 
{% endhighlight %}

