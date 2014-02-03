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

{% exercise %}
The bar is trialling a new initiative: Tuesdays is ladies night at the pub - no men allowed and all drinks are 2-4-1! They want you to update Bouncer 2.0 appropriately.

1. Add select boxes for sex and day on the form.
2. Add new templates to be shown on ladies night to (a) turn away a customer if he is male (b) give them an extra drink if they are female.
3. Add the required logic to `app.rb` to make it all work.

{% endexercise %}