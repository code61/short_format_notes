---
title: Post requests revisited
---

Last time we looked at responding to `get` requests:

{% highlight ruby %}
get '/' do
  "Hello there!"
end
{% endhighlight %}

As you know from the Introduction to Web Programming course, `GET` is only one of several types of web requests. Another is the `POST` request, which is commonly used for submitting data from a web form.

Suppose we have the following HTML form:

{% highlight html %}
<form method="post" action='/'>
    <input type='text' name='user_name'>
    <input type='text' name='user_age'>

    <input type='submit'>
</form>
{% endhighlight %}

The form will submit via a `POST` request to the root url, `/`. We can respond to this using the following sinatra block:

{% highlight ruby %}
post '/' do
  name = params[:user_name]
  age  = params[:user_age]

  "Hello #{name}. You are #{age} years old."
end
{% endhighlight %}

Note that, like the words matched in the url, the value of the `user_name` field is made available in the `params` hash. (If you want to have a look at the params hash you could put a `raise params.inspect` at the beginning of the method.)

{% exercise %}
1. **Fork** the repository [https://github.com/code61/sinatra_c3s2](https://github.com/code61/sinatra_c3s2) (using the fork button on the top right of the repository page on github).
2. Clone down your fork of the repository onto your laptop.
3. Open the `sinatra_c3s2` project in Sublime Text and have a read through `app.rb`. See if you can predict what the app will do.
4. Run the app from the command line (`ruby app.rb`), to see if you were right.
5. (Optional) Add the line `raise params.inspect` right at the top of the post block. Restart the app and see what happens. When you've had a look, make sure you remove the line again!
{% endexercise %}