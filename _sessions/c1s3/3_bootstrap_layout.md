---
title: Bootstrap layout
---

Bootstrap gives you several options on how to layout your page. To find out more take a look at the [Grid system docs](http://getbootstrap.com/css/#grid) on the Bootstrap site. Some of these options will work out-of-the-box with *responsive design* - so that you can create a single html page which will look good whether viewed on a laptop, tablet or phone.

We'll just look at a few of the most important layout options here:

### Page margins

Bootstrap makes it easy to center content on your page and provide sensible page margins. To do this make use of the `container` class:

{% highlight html %}
<body>
  <div class="container">

    <!-- page content goes here -->

  </div>
</body>
{% endhighlight %}

### Columns

Bootstrap works on a grid layout, with 12 columns (by default). You can create a column layout with the `row` and `span` classes:

{% highlight html %}
<div class='row'>
    <div class='col-sm-4'>
        <!-- First column content -->
    </div>
    <div class='col-sm-4'>
        <!-- Second column content -->
    </div>
    <div class='col-sm-4'>
        <!-- Third column content -->
    </div>
</div>
{% endhighlight %}

The number after the `col-sm-` determines how many of the 12 grid columns that page column takes up. The `sm` bit determines the width at which the columns will collapse on top of each other (which is useful when viewing your site on a phone). For more information see the [Grid system docs](http://getbootstrap.com/css/#grid).

{% exercise %}
1. Add a `div class='container'` around the page content.
2. Create a row at the top of the page, with two columns, with the left twice as wide as the right. Put the `h1` in the left column and the `img src='images/sandwich.png' ` on the right.
3. Create a row with three equal colums to hold each of 'The Buzz' `div`s.
{% endexercise %}