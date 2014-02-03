---
title: Twitter Bootstrap
---

[Twitter Bootstrap](http://getbootstrap.com) is set of CSS (& Javascript) files, released by the makers of Twitter. 

Twitter Bootstrap is a set of **ready-made CSS files** that provide solutions to **common presentation requirements** in a **cross-browser and responsive** way. To make use of Twitter Bootstrap, you need to do two things:

1. Link to the Twitter Bootstrap stylesheet in the `head` of your html page.
2. Attach the relevant Twitter Bootstrap class to you html element.

### An example: making a stripy table

Suppose you want a Zebra-esque table like this fine specimen:

<table class='table table-striped'>
<tbody>
  <tr>
    <td>I am a</td>
    <td>Zebra table!</td>
  </tr>
  <tr>
    <td>Look at my</td>
    <td>stripes.</td>
  </tr>
  <tr>
    <td>Do you find them</td>
    <td>beautiful?</td>
  </tr>
  <tr>
    <td>Do you find them</td>
    <td>mesmerising?</td>
  </tr>
  <tr>
    <td>Wooaahh ..</td>
    <td>.. such stripiness!</td>
  </tr>

</tbody>
</table>

You have a look at the [Twitter Bootstrap table documentation](http://getbootstrap.com/css/#tables) and discover that you need to add the `table table-striped` class to the `<table>` tag:

{% highlight html %}
<table class="table table-striped">
  ...
</table>
{% endhighlight %}

This will apply the relevant CSS rules from the bootstrap CSS file. If you're interested, you can go into Developer Tools and view the rules that apply e.g.

{% highlight css %}
/* from line 1950 of bootstrap.css */

.table-striped tbody tr:nth-child(odd) td,
.table-striped tbody tr:nth-child(odd) th {
  background-color: #f9f9f9;
}
{% endhighlight %}

### Responsive design

**Responsive design** means designing your sites so that they look good on all screen sizes.

Twitter Bootstrap promotes a 'mobile first' philosophy, encouraging you to design your site so that it looks good at all sizes from the very beginning. It provides a lot of useful CSS that helps you to do this.

We're not really going to cover responsive design in depth in class, but the Bootstrap docs do a good job of explaining what's possible. Take a look at the [grid system](http://getbootstrap.com/css/#grid) as an example.

{% exercise %}
The aim of the rest of this session will be to create the website for ["Sam's Sarnies"](http://code61.github.io/bootstrap_exercise/) using Twitter Bootstrap.

<ol markdown="1">
<li markdown="1">
Clone down the repository for the bootstrap exercise: [https://github.com/code61/bootstrap_exercise.git](https://github.com/code61/bootstrap_exercise.git)
</li>
<li markdown="1">
Open `bootstrap_exercise/index.html` in your browser.
</li>
<li markdown="1">
Go to the [Bootstrap](http://getbootstrap.com) website (it's hosted at github, like your `first_site`) and click the `Download Bootstrap` button (not the Download Source).
</li>
<li markdown="1">
Unzip and copy the `dist` folder into the `bootstrap_exercise` folder.
</li>
<li markdown="1">
Open `index.html` in Sublime Text and Chrome.
</li>
<li markdown="1">
Add a link to the twitter bootstrap stylesheet into `index.html`

{% highlight html %}
<link href='dist/css/bootstrap.css' rel='stylesheet'>
{% endhighlight %}
Note that you're using a document-relative link to a file two subfolders down.

</li>
<li markdown="1">
Refresh the page in Chrome. Notice how the fonts have changed.
</li>
<li markdown="1">
Add the following line to the `head` section:

{%highlight html %}
<meta name="viewport" content="width=device-width, initial-scale=1.0">
{% endhighlight %}
as suggested in the `CSS / Overview` section of the [Bootstrap docs](http://getbootstrap.com/css/#overview-mobile).
</li>
</ol>
{% endexercise %}