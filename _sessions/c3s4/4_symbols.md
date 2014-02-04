---
title: Symbols
---

Symbols are a bit like strings that can't be changed. They're primarily used to save space and time:

* Every time you write a string in ruby it has to store a new copy of it in case it is changed.
* Every time you compare two strings it has to check every letter to see if they're the same.
* As symbols can't be changed, it allows ruby to only store them once.
* This makes it quick to compare, as you can just check to see if it's in the same storage location.

So far we've used strings for our hash keys. As we write and compare hash keys a lot, it makes sense to use symbols instead.

{% highlight ruby %}
"hello"
:hello
{% endhighlight %}

{% highlight ruby %}
:hello.to_s
"hello".to_sym


"hello" << " world"
:hello << :" world"

"hello".object_id

:hello.object_id
{% endhighlight %}

{% exercise %}
(Optional)
1. Do `ruby4/symbolize_keys.rb`.
2. Test your answers using `test_symbolize_keys.rb`
{% endexercise %}