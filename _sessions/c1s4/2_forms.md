---
title: Basic forms
---

A basic html form looks like this:

{% highlight html %}
<form>
    <input type='text' name='name'>
    <input type='text' name='email'>

    <input type='submit'>
</form>
{% endhighlight %}

It has the following features:

* The whole form is contained with `<form>...</form>` tags.
* It has two text fields, using `<input>` tags.
* The input tags are stand-alone tags: they have no closing `</input>`.
* It has a submit button `<input type='submit'>`.

### Forms with labels

The above form contains only text boxes. A user visiting the form would have no idea what to put in each box. We can fix this with some simple labels:

{% highlight html %}
<form>
    <label>Name</label>
    <input type='text' name='name'>

    <label>Email</label>
    <input type='text' name='email'>

    <input type='submit'>
</form>

{% endhighlight %}

{% exercise %}
1. Clone the code for this session: [https://github.com/code61/html_forms.git](https://github.com/code61/html_forms.git)
2. Open 'basic_form.html' in Sublime Text and Chrome.
{% endexercise %}