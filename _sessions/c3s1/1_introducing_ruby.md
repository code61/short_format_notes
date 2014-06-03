---
title: Introducing ruby
---

Ruby is a programming language. It is different to HTML and CSS, which are just *markup* languages: in ruby you can do calculations. 

Ruby is an incredibly powerful and flexible language. It is a modern language - created in the 1990s by Yukihiro Matsumoto (Matz). A large part of his design philosophy is centered around optimizing for developer happiness - making a language that is a pleasure to program in. If you haven't already programmed in another language, you might not fully appreciate this, but - take it from someone who has - ruby is awesome!

Ruby really shot to fame around 2005, due to the Ruby on Rails web framework. Ruby on Rails is a free, open-source web programming toolkit, which makes it really quick and easy to build web applications. Many top startups and sites (e.g. yellowpages.com, airbnb.com, github.com, gocardless.com, grouper.com) are built with ruby on rails - its rapid prototyping capabilities make it one of the go-to choices, especially for startups. The first version of Twitter was built in Ruby on Rails!

In this course, we'll be leaning the basics of ruby, in a web development context. We won't be using ruby on rails, instead focussing on a simpler framework (called sinatra), which will give you a better understanding of what's going on behind the scenes and allow you to be far more productive with rails, when you come onto it later.

## Interactive ruby: irb

Ruby is an _interpreted language_. One of the great things about an interpreted language is that it's often possible to interact with the interpreter in real time. When you installed ruby, you also got a program called `irb` (interactive ruby), which allows you to interpret ruby on the command line. To start it you just type `irb` on the command line.

{% highlight irb %}
001: > 2 + 2
 => 4 
002: > 
{% endhighlight %}

`2 + 2` is a ruby *expression*. The `=>` symbol tells you what *value* this expression evaluates to. The interpreter has converts expressions to values.

If you just type the value `4` into irb, you will see that it will return `4` to you. 

{% highlight irb %}
001: > 4
 => 4 
002: > 
{% endhighlight %}

Like all values in ruby, `4` is also an expression - it just evaluates to itself.

So far you've only seen values that are numbers. We'll come across some other values soon.

## Comments

In ruby, any part of a line that comes after a `#` is ignored. This is useful when you're writing complicated programs, as it allows you to write human-readable comments to document your code.

{% highlight irb %}
001: > 2 + 2  # add together 2 and 2
 => 4 
002: > # this does nothing
003: > 
{% endhighlight %}

Notice how in line `002` above there is no `=>` and no return value; comments don't evaluate to anything - they're completely ignored.

{% exercise %}
1. Pick a partner.
2. Open `irb` on one of your laptops.
3. For each of the following ruby expressions, try to agree what value you think they evaluate to. Check if you're right in irb.
{% highlight ruby %}
1 + 2

5 - 6

8 * 9

6 / 2

5 / 2

5.0 / 2

5 % 2

2.even?

3.even?

"hello " + "world"

"Bob" * 3

"Bob" + 3

"don't shout".upcase

"edam".reverse
{% endhighlight %}
{% endexercise %}

{% exercise %}
4. (Challenge for pairs who finish early). What does the operation `^` do? E.g.

        1 ^ 2

        2 ^ 5

        4 ^ 5


{% endexercise %}
