---
title: HTML templates
---

So far we've just returned text to the browser. It would be better if we could return proper HTML pages. We can do this by using **HTML templates**.

{% highlight ruby %}
# in app.rb

require 'sinatra'

get '/' do
  erb :form
end
{% endhighlight %}

{% highlight html%}
<!-- in views/form.erb -->

<!DOCTYPE html>
<html>
<head>
  <title>Barman 2.0</title>
</head>
<body>
  <div class='container'>
    <form method="post" action='/'>
      <input type='text' name='user_name' placeholder='name'>
      <input type='text' name='user_age' placeholder='age'>

      <button type='submit'>Submit</button>
    </form>
  </div>
</body>
</html>
{% endhighlight %}

The line `erb :form` tells sinatra to look for a file called `form.erb` in a folder called `views`. It then processes that file using the `erb` (**e**mbedded **r**u**b**y) templating language and returns the result to the user.

The `form.erb` above isn't very interesting: it is jsut a static template and doesn't have any ruby embedded in it. Let's look at a slightly better example:

{% highlight ruby %}
# in app.rb

get '/' do
  erb :form

post '/' do
  @name = params[:user_name]
  @age  = params[:user_age]

  erb :welcome
{% endhighlight %}

{% highlight html %}
<!-- in views/welcome.erb  -->

<!DOCTYPE html>
<html>
<head>
    <title>hello</title>
</head>
<body>
    <h1>Hello <%= @name %>. You are <%= @age %> years old.</h1>
</body>
</html>
{% endhighlight %}

The important bits are:

* In `app.rb` we assign `params[:name]` to a special type of variable `@name`. The special type of variable is an *instance variable* which **has to begin with a single `@`**.
* We use the instance variable in the `views/greet.erb` inside a special erb tag `<%= ... %>`. The erb templater looks for these tags and interprets the inside as ruby.

{% exercise %}
1. Uncomment the bottom part of `sinatra_c3s2/app.rb` and comment out the top two blocks.
2. Restart your server and check you can see the new page `h1` sections.
3. Add twitter bootstrap to your templates, linking to the online hosted version as described on the [Bootstrap CDN](http://getbootstrap.com/getting-started/#download-cdn) section of the bootstrap docs.
4. Add a `div class='container'` around the page content, and add some styling to the `form` (see [here](http://getbootstrap.com/css/#forms)).
5. Add and commit your changes to your local git repo.
6. Deploy your changes:

        git push heroku

{% endexercise %}