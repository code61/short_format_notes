---
title: CSS
---

Last time we looked at HTML, and saw how this was used to mark up the information in a webpage. Right now, your HTML pages don't look very good, as you haven't given any styling information. The way to do this is using CSS (Cascading Style Sheets).

CSS is a way of separating the way your page looks from the content that it displays. As an extreme example of this check out [CSS Zen Garden](http://www.csszengarden.com/) - by clicking on the links you completely change how the site looks, but the html remains unchanged.

There are a few ways to include CSS in an HTML file:

1. Put the css inline in the html.
2. Put the css in a `<style>..</style>` section in the `<head>`
3. Link to a separate `.css` file in the `<head>`

The first way is sometimes useful, but defeats the point of using CSS to separate presentation and information. The second way is a bit better and is what we'll do now - it's nice to have everything in a single file when you're just starting. The third way is the best. We'll look at how to do this next time.

### CSS in the `<head>`

If you're putting your CSS in the `<head>` of your html file (option 2) it should look something like this: 

{% highlight html %}
<head>
  <title>Some title</title>
  <style>
    h1 { color: red; }
  </style>
</head>
{% endhighlight %}

The bit inside the `<style>` tags is CSS. The `h1` bit specifies the tag that will be styled. The bit inside the `{ ... }` specifies the styles that will be applied. Here we change the colour of the `h1` text red.

If you save the changes to the html file, then open (or refresh) the page in your browser you should see the changes. By opening the developer tools, and hovering over the `h1` you should be able to see your css rule at the side.

### A few more properties

In the example above we changed the color of the `h1` element. Here are a few examples of other simple properties you can try out while you're getting the hang of css:

{% highlight css %}
p { font-family: 'Arial'; }
h2 { font-size: 20px; }
h3 {
    background-color: green;
    font-size: 2px;
}
{% endhighlight %}

Note that you can specify multiple properties on one element. When you do this it's nice to lay them out on multiple lines as done above.

{% exercise %}
1. Use git to clone the repo for this part of the session: [https://github.com/code61/html2](https://github.com/code61/html2).
2. Open `exercise1.html` in Sublime Text and in Chrome.
3. Add some css in the `head` to make the `h1` turn red.
5. Continue with the exercise until `exercise1.html` looks like `exercise1_solution.png`.
{% endexercise %}