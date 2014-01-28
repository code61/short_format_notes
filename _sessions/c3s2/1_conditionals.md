---
title: If statements and comparisons
---

So far we've just used ruby to evaluate simple expressions. Coding becomes a lot more interesting when you can use your code for simple logic tasks:

{% highlight ruby %}
if age >= 18
  "Here's the vodka you wanted."
else
  "Move along please."
end
{% endhighlight %}

The code within the `if` block will only be run if the statement is true. If the statement is false, the code in the `else` block will be run instead.

### Comparisons

There are some basic comparisons that will be useful when using if statments

Symbol | Meaning
---- | ----
`==` | Is equal to
`>`  | Greater than 
`<`  | Less than
`>=` | Greater than or equal to
`<=` | Less than or equal to
`!=` | Not equal to

Comparisons evaluate to `true` or `false`.

{% exercise %}
Working with a partner, try out each of these comparisons in irb:
{% highlight ruby %}
4 == 5

'five'.length > 5

a = 20
a <= 20

true >= false

'aardvark' < 'anteater'

'we' != 'done yet'
{% endhighlight %}
{% endexercise %}

