---
title: Modifying Bootstrap
---

<div class='alert alert-error'>
<strong>Warning</strong>: Bootstrap has been designed and heavily tested for good cross-browser compatibility. Unless you know what you're doing or have a lot of time, it's probably best to stick with their layout and tweak small things e.g. fonts and colours. Just because it looks great in your browser doesn't mean it will look great in everyone's!
</div>

If you're going to modify Bootstrap **don't touch the Bootstrap files**. Instead create a new css file of your own to overwrite anything you don't want. This means when a new version of Bootstrap comes out you can upgrade by dragging the new version over the top of the old, without losing any modifications.


{% exercise %}
<ol markdown="1">
<li markdown="1">
Create a file called `main.css` and write the following CSS:
{% highlight css %}
#social-buttons button {
  color: white;
}
.btn-twitter {
  background-color: #00acee;
  border-color: #009ad5;
}

.btn-facebook {
  background-color: #4868ac;
  border-color: #314776;
}

.btn-pinterest {
  background-color: #b62f26;
  border-color: #b62f26;
}
{% endhighlight %}
</li>
<li markdown="1">
Link this file into the `head` of `index.html` **underneath your link to bootstrap**.
</li>
<li markdown="1">
What happens? Notice how in the first rule we've selected only those buttons that exist inside an element with `id=social-buttons`.
</li>
</ol>
{% endexercise %}

### Changing the background

{% exercise %}
<ol markdown="1">
<li markdown="1">
Change the background of the `jumbotron` to be the image `fruit-and-veg.png` by adding the css
{% highlight css %}
.jumbotron {
  min-height: 600px;
  background-image: url('images/fruit-and-veg.jpg');
  background-size: cover;
  background-attachment: fixed;
}
{% endhighlight %}
</li>

<li markdown="1">
This doesn't look quite right. The problem is that the jumbotron is it is inside the `div class='container'`. You can change this by moving it inside:
{% highlight html %}
<div class="jumbotron">
  <div class="container">

  </div>
</div>
{% endhighlight %}
Similarly you will now need to create new `container`s inside the `div id='buzz'` and `div id='mission'`.
</li>
<li markdown="1">
Change the background color of the `mission` section to `rgba(32, 35, 41, 0.9)` and the font colour to `#ddd`
</li>
</ol>
{% endexercise %}


### Navbar

Browse through the [navbar section](http://getbootstrap.com/components/#navbar) of the Bootstrap docs.

{% exercise %}
1. Look at the html for the [basic starter template](http://getbootstrap.com/examples/starter-template/).
2. Use it to add a navbar to your site.
2. Make it a `navbar-fixed-top`. You will need to add

        body { padding-top: 70px; }

    to `main.css`.
3. Add a search box to the navbar. Use the `pull-right` class to put it on the right hand side.
{% endexercise %}

### Other things

There are various other changes you will need to make your site look like the example. Try and figure out what these are by examining the html in the Developer tools.

{% exercise %}
1. Make any other changes necessary to make your site look like [the example](http://code61.github.io/bootstrap_exercise/)
2. If you get stuck check by looking at the [gh-pages branch](https://github.com/code61/bootstrap_exercise/tree/gh-pages) on the github repo.
{% endexercise %}