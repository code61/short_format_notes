---
title: Introducing ruby
---

Ruby is a programming language. It is different to HTML and CSS, which are just *markup* languages: in ruby you can do calculations. We'll start off with a demonstration: 

Ruby is an incredibly powerful and flexible language. It is a modern language - created in the 1990s by Yukihiro Matsumoto (Matz). A large part of his design philosophy is centered around optimizing for developer happiness - making a language that is a pleasure to program in. If you haven't already programmed in another language, you might not fully appreciate this, but - take it from someone who has - ruby is awesome!

## Iteractive ruby: irb

One of the great things about an interpreted language is that it's often possible to interact with the interpreter in real time.

On the command line type `irb` to enter an interactive ruby session.


{% highlight irb %}
001: > 2 + 2
 => 4 
002: > 
{% endhighlight %}

`2 + 2` is a ruby *expression*. The `=>` symbol tells you what this expression evaluates to. If you try just typing `4` at the irb prompt, you will see that `4` is an expression that evaluates to itself.



## Comments

The first line is a comment - it doesn't do anything. Commenting you code can help you (and others) understand what is going on when you come back to look at it later. Any text on a line that comes after a `#` is a comment:

{% highlight irb %}
001: > 2 + 2
 => 4 
002: > 
{% endhighlight %}

