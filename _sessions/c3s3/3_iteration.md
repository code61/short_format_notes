---
title: Iteration
---

Most programming language have some way of looping, or iterating, over a range of values.

Ruby's approach to this is slightly unusual - instead of you taking elements from the array one-by-one, the ruby array *gives* the elements to you one-by-one. This might seem like a small distinction to make, but it has a significant effect on the feel of the ruby language and how you think about coding with it.

The way you get an array to give you its elements is by calling its `each` method:

{% highlight ruby %}
array = [1, 2, 3, 4, 5]
sum   = 0

array.each do |n|
  sum = sum + n
end

sum #=> 15
{% endhighlight %}

The `each` method accepts a **block** - in the example above, this is everything between `do ... end`.

* The `each` method sends the elements of the array one-by-one to the block.
* When the element arrives it is assigned to the variable `n`.
* The code on the inside of the block is then run.

In the example above, each element is added to the `sum`. The example shows one method that you can use to sum the values in an array.

Below is another example, which iterates over the elements of an array, separating them into one of two lists:

{% highlight ruby %}
all_words   = ['hello', 'how', 'are', 'you', 'today']
long_words  = []
short_words = []

all_words.each do |word|
  if word.length >= 5
    long_words  << word
  else
    short_words << word
  end
end

long_words  #=> ['hello', 'today']
short_words #=> ['how', 'are', 'you']
{% endhighlight %}

<small>Please note: the summing and categorising examples above can be made much neater with the use of the array methods `inject` and `select`. We'll leave that for another day though ...</small>

{% exercise %}
Take another look through the code examples above. Check you really understand how they work. Try them out in `irb`, to check they work as advertised!
{% endexercise %}

