---
title: Form submissions
---

{% exercise %} 
1. Open `basic_form.html` in Chrome.
2. Fill in the name and email and click 'Submit'.
3. What, if anything, happens?
{% endexercise %}

### The name property

When you clicked the submit button on the basic form, you probably noticed the url change to something like:

    file:///Users/tomclose/Documents/Coding/html_forms/basic_form.html?name=tom&email=tom%40example.com

the values that you entered into the form now appear in the url. (The strange `%40` is code for the `@` character, which isn't allowed to appear in URLs.)

The following things happened:

1. The form packaged up the values you gave it. To do this it used the `name` property of each input tag.
2. It submitted them to the **same url** you were on.
3. It did this by appending them to the url as *query parameters*.

The important thing in deciding how to package the values was the `name` property of the `<input>` tag. The tag

{%highlight html %}
<input name='email'>
{% endhighlight %}

was converted to the name-value pair `email=tom%40example.com` in the URL.

You can get a better idea of these stages by looking at the 'Network' tab on Chrome's developer tools:

{% exercise %}
1. Open Chrome's developer tools and go to the 'Network' tab.
2. Put some new values into the form and press 'Submit' again.
3. Look at the information in the 'Network' tab.
{% endexercise %}

You should see something like the following:
![dev tools form submit get](/assets/dev_tools_form_submit_get.png)

There are two `GET` requests. The first is to the same page, with the field names and their new values as query parameters. The second is to bootstrap - when your browser reloads the page with the new query paramenters, it finds the `<link rel='stylesheet' http='bootstrap/css/bootsrap.css' >` in the `<head>` and so fetches that file too. 

You can find out more about the first `GET` request by clicking on the `headers` tab:
![dev tools form submit](/assets/dev_tools_form_submit.png)

You should be able to see the names and their values from the input elements.

### GET and POST

In the above example we saw that the browser made two `GET` requests. `GET` is the most common *http verb*. It describes the normal way your browser asks for a webpage (and CSS files, js files, images etc.).

The most important thing about `GET` requests is that they **shouldn't change any values on the server**. For this reason they're not usually used for form submissions, which are generally for providing new data to the server.

We can change the form to submit using a `POST` request instead.

{% highlight html %}
    <form method='post'>
{% endhighlight %}

{% exercise %}
1. Change `basic_form.html` to submit via a post request.
2. Reload the page, fill in some new values and resubmit the form.
3. What happens? Have a look in the 'Network' section of developer tools.
{% endexercise %}

You should notice that this time **the URL doesn't change**. When a form is submitted with a `POST` method the parameters are packaged up and sent along in the `headers`, instead of being put in the url. You can check this out in Developer tools:

![dev tools form submit post](/assets/dev_tools_form_submit_post.png)

You can see the name and values have been packaged into a payload.

![form submit payload](/assets/dev_tools_post_payload.png)

**Warning:** Just because POST parameters aren't sent in the URL **doesn't** mean they are private. Unless you are using https, anyone watching your traffic can read all the information you're submitting.

### Submitting to a different url

So far all our requests have been to the URL we were on. On the whole, this isn't too useful. It's easy to change though:

{% highlight html %}
    <form method='post' action='thanks.html'>
{% endhighlight %}

By setting the `action` attribute of the `form` tag we specify the URL to submit the form to.

{% exercise %}
1. Set the form in `basic_form.html` to submit to `thanks.html`.
2. Refresh and resubmit the form.
3. What happens? Where has your data gone?
{% endexercise %}