---
title: More form elements
---

{% exercise %}
1. Open `form_elements.html` in Sublime Text and in Chrome.
2. Refer to both as you read through this page.
{% endexercise %}

So far we have only looked at text field elements. As you're probably aware from experience, there are many other options for html form fields. Here are some of the most common:

### Textarea

{% highlight html %}
<textarea name='feedback' rows="3"></textarea>
{% endhighlight %}

A textarea is like a text field, except is is expandable.

### Password field

{% highlight html %}
<input type='password' name='user_password'>
{% endhighlight %}

Password fields obscure your input as you type. They **do not** encrypt the value that was input - the password will be sent in plain text as a normal name-value pair in the payload. In particular, **if you're using http, anyone snooping on the line can read your password**. If you want to be secure you have to use https.

### Radio buttons and checkboxes

{% highlight html %}
<!-- radio buttons -->
<input type='radio' name='laptop-type' value='windows'>
<input type='radio' name='laptop-type' value='mac'>
<input type='radio' name='laptop-type' value='linux'>

<!-- checkboxes -->
<input type='checkbox' name='languages-known' value='html'>
<input type='checkbox' name='languages-known' value='css'>
<input type='checkbox' name='languages-known' value='ruby'>
<input type='checkbox' name='languages-known' value='javascript'>
{% endhighlight %}

Radio buttons and checkboxes are similar:

* You have multiple options linked by having the same name.
* Each option has a `value` which will be used in the name-value pair.

They are different in that:

* In a group of radio buttons only one can be selected.
* In a group of checkboxes you can select zero, one or many.
* If you select multiple checkboxes a name-value pair will be created for each one.


### Select boxes

{% highlight html %}
<select name='fruits'>
    <option value='banana'>banana</option>
    <option value='apple'>apple</option>
    <option value='pear'>pear</option>
    <option value='tomato'>tomato</option>
</select>
{% endhighlight %}

Select boxes provide a drop-down list of options. Note how the `<select>` contains the name and each `<option>` has a different `value`.

### Other options

{% highlight html %}
<input type='color'>
<input type='date'>
<input type='time'>
{% endhighlight %}

There are several other options for html input types. For a complete list see [here](http://www.w3schools.com/tags/tag_input.asp). I don't know how well supported these 'other' types are across browsers - I think they're probably new in [html5](http://www.html5rocks.com/en/). Probably worth testing in multiple browsers (or googling to find out which browsers support them) before you start relying on them!

For more information about styling forms have a look at the [Twitter Bootstrap forms section](http://getbootstrap.com/css/#forms).
