---
title: jQuery
---

This is meant to serve as a really quick introduction to jQuery - more to enable you to learn more, rather than to teach you anything in particular.

### What is jQuery

Javascript is the third main client side technology (along with HTML and CSS). Unlike HTML and CSS, which are mark-up languages, Javascript is a programming language - you can use it to do calculations (and pretty much anything you want!).

jQuery is a **javascript library** that is useful for building interactive webpages. When you use jQuery, it's a bit like you're using a special version of javascript.

jQuery is so common in webpages that, for beginners, 'learning javascript' has in many cases become 'learning jQuery'. This is the approach that we're going to take in this course.

### Getting jQuery

jQuery is just a javascript file that can be downloaded from the [jquery downloads page](http://jquery.com/download/). There are a couple of different versions - I'd go for the latest. For each version you can either get the normal code, which is useful for development, or the minified code, which has had all the space (and other stuff) taken out to make it as small as possibile, so it downloads quicker.

Once you've downloaded the file and saved it in your site folder, you need to link to it in your page. For the time being we'll do this in the `head` (you can improve page-load times by moving your javascript to the bottom of the page, but we won't bother with this at the moment).

{%highlight html%}
<!DOCTYPE html>
<head>
  <script src="jquery.js"></script>
  <!-- any other stuff e.g. stylesheet links -->

{%endhighlight%}

### Using jQuery

You can do a lot of stuff with jQuery. Here we'll just look at the basics: selecting elements on the page and doing stuff with them.

You can experiment with jQuery using the `Console` section of the Chrome developer tools. You will need to be on a page where jQuery is loaded (e.g. these course notes or the demo page you will download in the exercise).

One of the nice things about jQuery is its ability to select elements via their CSS selectors. To select elements jQuery uses the `$()` function. For example:

{% highlight javascript %}
$('li')               // selects all the li elements on the page
$('li.important')     // selects all the li with class="important"
$('#main-title')      // selects the element with id="main-title"
{% endhighlight %}

jQuery then has several ways of manipulating those elements:

{% highlight javascript %}
$('h1').hide()
$('h1').show()
$('h1').css('color', '#f00')
$('h1').css('color', '#ff0')
$('h1').css('font-size', '80px')
$('h1').css('font-size', '8px')
$('h1').css('text-align', 'right')
$('h1').fadeOut()
$('h1').fadeIn()
{% endhighlight %}

You can find out more about the options available to you in the [jQuery docs](http://api.jquery.com/).

{% exercise %}
1. Clone down the jQuery demo code:

        git clone https://github.com/tomclose/jquery_intro.git

2. Open `index.html` in Chrome.
3. Open the Chrome developer tools and switch to the `Console` panel.
4. In the console try the following:

        $('h1').hide()
        $('h1').show()
        $('h1').css('color', '#f00')
        $('h1').css('color', '#ff0')
        $('h1').css('font-size', '80px')
        $('h1').css('font-size', '8px')
        $('h1').css('text-align', 'right')
        $('h1').fadeOut()
        $('h1').fadeIn()

5. Can you make the list items go green?
{% endexercise %}
