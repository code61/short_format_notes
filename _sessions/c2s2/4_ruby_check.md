---
title: Ruby check
---

Next term we're going to be looking at backend development in ruby. You will need to have ruby installed. You should check whether you have this now:

{% exercise %}
1. On the command line (in any folder) type:

        ruby --version

    It should tell you the version of ruby that's installed. If it doesn't say anything you're in trouble!

{% endexercise %}

You can have a bit of a play with ruby now if you want: on the command line type `irb` (this stands for interactive ruby). You'll end up in a ruby session (a bit like if you've used Matlab). Try the following:

{% highlight ruby %}
1+2
3-4
5*6
10/5
9/5
9/5.0
2**3
2**19283

x = 5
y = 6
x + y

(1..10).each {|n| puts n }

{% endhighlight %}