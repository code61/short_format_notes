---
title: Selectors and Attributes
---

So far you have used html tags to specify CSS rules. For example,
{% highlight css %}
h2 { 
  font-size: 40px;
  color: pink;
}
{% endhighlight %}
will turn all your `<h2>` massive and pink.

It is often useful to be able to make CSS rules more specific, so you can apply different styles to different parts of the page. One common way to do this is to target specific html attributes - in particular `id` and `class`.

### The `id` and `class` attributes

HTML tags can have *attributes* which provide additional information about the element. You've aready seen some examples of this:
{% highlight html %}
<a href="http://www.facebook.com">
<img src="cat_pic.png">
{% endhighlight %}
Both `href` and `src` are examples of html attributes. They are written in pairs with their values: `attribute="value"`.

There are some attributes that can be added to any tag. Two examples of these are `id` and `class`:
{% highlight html %}
<h2 id="products_title">Our scrumptious puddings</h2>

<ul id="products_list">
  <li class="product_item">Black forrest gateau</li>
  <li class="product_item">Rasberry lemon swirl cheesecake</li>
  <li class="product_item">Sticky toffee pudding</li>
  <li class="product_item">Death-by-chocolate cake</li>
</uk>
{% endhighlight %}
Both `id` and `class` are used to add some information to the HTML tags. The key difference is that `id` should specify a *unique element on the page*, whereas multiple elements can share the same `class`.

CSS lets you target the `id` and `class` attributes in special ways:
{% highlight css %}
/* make the h2 with id="products_title" purple */
h2#products_title { color: purple; }

/* remove the bullets from all li with class="product_item" */
li.product_item { list-style-type: none; }
{% endhighlight %}
The `id` is targeted by adding `#id_value` to the tag and the `class` is targeted by adding `.class_value` to the tag.

It is also possible to target any items with a given `class` or `id` by leaving out the HTML tag:
{% highlight css %}
/* make any element with id="products_title" purple */
#products_title { color: purple; }

/* make any element with class="product_item blue" */
.product_item { color: blue; }
{% endhighlight %}

### Divs and spans

There are two important HTML tags, that we didn't use last week: `<div>` and `<span>`. Both are really useful when it comes to using HTML attributes to target CSS classes.

`<div>` stands for *division* and is used to break the page up into different parts. It is a 'block-level' element, which means that it will start a new line before and after it.

`<span>` can be used to apply classes and ids to certain bits of text. It is an 'inline' element, which won't start a new paragrah before or after.

{% highlight html %}
<div id='info_section'>
  <p>This is a paragraph in the info section. We can use a span to target <span class='important'>certain bits of important text</span>.<p>
</div>
{% endhighlight %}

{% exercise %}
1. Open the file `html2/exercise2.html` in Sublime Text and Chrome.
3. Continue until your page looks like `html2/exercise2_solution.png`
{% endexercise %}



