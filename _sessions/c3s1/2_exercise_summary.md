---
title: Exercise summary
---

Before we will move on to variables, we'll quickly look at a few of the things that you found out in the previous exercise:

{% highlight ruby %}
> 6 / 2
=> 3
> 5 / 2
=> 2
> 5.0 / 2
=> 2.5
> 5 % 2
=> 1
{% endhighlight %}

If you give ruby integers (whole numbers), it will do *integer division*. For example, `5 / 2` gives `2` as it is the largest whole number of times you can remove `2` from `5`. The partner to integer division is the remainder `5 % 2`, giving `1`. Together these two operations tell you that `2` goes twice into `5` with remainder `1`. If you give ruby decimals it will do normal division. **Everyone gets caught out by this at some point. You have been warned!**

{% highlight ruby %}
> 2.even?
=> true
{% endhighlight %}

The line above is actually pretty special. We've just asked the value `2` a question and it's responded. In programming terms, this works because `2` is an *object* - something that contains both data and *methods* that can query/manipulate the data. In this case, `even?` is the method that we called. In ruby **all values are objects**. This is unusual and isn't true in many other programming languages. We'll leave it at that for the time being, but you'll learn more about this later.

{% highlight ruby %}
> "hello " + "world"
=> "hello world"
> "don't shout".upcase
=> "DON'T SHOUT"
{% endhighlight %}

Here you met another third type of value: `"hello"` is a string. As you see here, you can add strings together. Like all ruby values, strings are also objects and therefore have methods. Here we used the `upcase` method, to change the string into uppercase. You can find out more about the methods that strings have in the [ruby docs](http://ruby-doc.org/core-2.1.0/String.html).

{% highlight ruby %}
> "Bob" + 3
TypeError: can't convert Fixnum into String
from (irb):1:in `+'
{% endhighlight %}

Oh dear! Turns out that you can't add a string to an integer. Have another read of the message that irb gave you. Can you figure out what it is saying? When something goes wrong, ruby tries to be as helpful as it can. Learning to interpret the errors that ruby gives is an important part of learning to become a programmer.

