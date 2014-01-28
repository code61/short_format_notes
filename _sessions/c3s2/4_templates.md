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

The line `erb :form` tells sinatra to look for a file called `form.erb` in a folder called `views`. It then processes that file using the `erb` (embedded ruby) templating language and returns the result to the user.

The `form.erb` above isn't very interesting: it is just a static template and doesn't have any ruby embedded in it. Let's look at a slightly better example:

{% highlight ruby %}
# in app.rb

get '/' do
  erb :form

post '/' do
  @name = params[:user_name]
  @age  = params[:user_age]

  erb :welcome
end
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

Sinatra emphasises *convention* over *configuration*: rather than specifying the exact place to find the template, you just give the name and Sinatra 'knows' where to look. This means you have to write less code in the long run, but also that you have to know the conventions before you start.

<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Sinatra template summary</h3>
  </div>
  <div class='panel-body'>
   <ol>
      <li>You call a template with the line <code>erb :template_name</code>.</li>
      <li>For this to work, you will need a template called <code>template_name.erb</code> in the <code>views</code> folder.</li>
      <li>Instance variables (ones that start with <code>@</code>) will be shared with the template.</li>
      <li>You use these shared instance variables in the template by putting them inside an erb tag: <code>&lt;%= @my_variable &gt;</code> </li>
    </ol> 
  </div>
</div>


{% exercise %}
1. Uncomment the bottom part of `sinatra_c3s2/app.rb` and comment out the top two blocks.
2. Restart your server and check you can see the new page `h1` sections.
3. Add twitter bootstrap to your templates, linking to the online hosted version as described on the [Bootstrap CDN](http://getbootstrap.com/getting-started/#download-cdn) section of the bootstrap docs.
4. Add a `div class='container'` around the page content, and add some styling to the `form` (see [here](http://getbootstrap.com/css/#forms)).
5. Add and commit your changes to your local git repo.
6. Deploy your changes:

        git push heroku

{% endexercise %}