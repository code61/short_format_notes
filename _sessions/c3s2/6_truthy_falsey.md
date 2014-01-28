---
title: Truthy and falsey
---

In the last exercise you found out something interesting:

{% highlight ruby %}
true && "ham" #=> "ham"
{% endhighlight %}

Which is a bit weird. There are actually two things going on here:
1. The string `ham` is considered to be `true`
2. The overall statement evaluates to the last expression in it

### Truthy and falsey

In ruby there are only two values that are considered false: `false` and `nil`. We say that `false` and `nil` are *falsey*.

Everything else is considered to be true. We say that all other objects are *truthy*.

What we mean by 'considered to be true' is that if that value is used as a conditional in an `if` statement then the if code runs:

{% highlight ruby %}
if 5
	x = 1
else
	x = 2
end

x #=> 1
{% endhighlight %}

In the above block of code, as `5` is truthy, the variable `x` is set to `1`.

