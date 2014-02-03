---
title: More Bootstrap
---

### Typography

Skim through the [typography section](http://getbootstrap.com/css/#type) of the bootstrap docs.

{% exercise %}
1. Change the quotes in 'The Buzz' to use [blockquotes](http://getbootstrap.com/css/#type-blockquotes). (Don't worry about the vertical grey lines - we'll remove those later.)
2. Change the paragraphs in 'Our mission' to be [lead body copy](http://getbootstrap.com/css/#type-body-copy).
{% endexercise %}


### Badges and Buttons

Check out the [buttons section](http://getbootstrap.com/css/#buttons) (CSS > Buttons). 

{% exercise %}
<ol markdown="1">
<li markdown="1">Change the 'Send' button to a success button:
{% highlight html %}
<button class='btn btn-success' >Send</button>
{% endhighlight %}
    You might also need `btn-small` in the Recent Activity section.
</li>
<li markdown="1">
2. Make the social links at the bottom in to large buttons (we'll colour them later):
{% highlight html %}
<button class='btn btn-lg' >Send</button>
{% endhighlight %}
</li>
</ol>
{% endexercise %} 

### Images

Have a look at the [image section](http://getbootstrap.com/css/#images) of the Bootstrap docs (CSS > Images).

{% exercise %}
1. Make the images in 'The Buzz' round, by adding the `img-circle` class.
2. You can center the image by adding the [helper class](http://getbootstrap.com/css/#helper-classes-center) `center-block`.
2. Change the main sandwich image into a `img-responsive`, as described in the [responsive images section](http://getbootstrap.com/css/#overview-responsive-images). Try resizing your browser and see how it changes size.
{% endexercise %}
