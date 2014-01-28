---
title: Logical operations
---

It's often useful to combine various conditions:

{% highlight ruby %}
if age < 12 || height < 1.2
	"You are allowed on the ride."
else
	 "Try a different helter-skelter. There's nothing for you here."
end
{% endhighlight %}

It the above snippet of code the `||` means or. If the person is under 12 or is smaller than 1.2m they are allowed on the ride.

### Logical operations

Ruby has three ways of combining conditions:

#### and (`&&`)

If you use an `&&` the output is true only if both inputs are true. You can write this in terms of a *truth table*:

{% highlight ruby %}
false && false #=> false
false && true  #=> false
true  && false #=> false
true  && true  #=> true
{% endhighlight %}

#### or (`||`)

If you use the `||` the output is true if at least one of the inputs is true. `||` means one or the other **or both**:

{% highlight ruby %}
false || false #=> false
false || true  #=> true
true  || false #=> true
true  || true  #=> true
{% endhighlight %}

### not (`!`)

The `!` is not. It is a quick way of reversing the truth of the condition:

{% highlight ruby %}
!false #=> true
!true  #=> false
{% endhighlight %}

{% exercise %}
1. Working with a partner, see if you can guess what the following expressions evaluate to. Test in `irb` to see if you're right.
{% highlight ruby %}
1 > 2 && 3 > 4

1==1 || 10 ==9

!(5<6)

(1<=2 && 3>4) || (3 <= 4 && "ham")
{% endhighlight %}
{% endexercise %}