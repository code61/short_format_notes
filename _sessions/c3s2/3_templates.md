---
title: HTML templates
---

So far we've just returned text to the browser. It would be better if we could return proper HTML pages. We can do this by using HTML templates.

{% highlight ruby %}
# in app.rb

require 'sinatra'

get '/' do
    erb :index
end
{% endhighlight %}

{% highlight html%}
<!-- in views/index.erb -->

<!DOCTYPE html>
<html>
<head>
    <title>hello</title>
</head>
<body>
    <h1>hello</h1>
</body>
</html>
{% endhighlight %}

The line `erb :index` tells sinatra to look for a file called `index.erb` in a folder called `views`. It then processes that file using the `erb` (**e**mbedded **r**u**b**y) templating language and returns the result to the user.

{% exercise %}
1. Move into the `sinatra1/app2` folder.
2. Run the app with `ruby app.rb`.
3. Change the app so that the page it shows says "Hello everyone!" (inside the `h1`).
{% endexercise %}

The `index.erb` above isn't very interesting: it doesn't have any ruby embedded in it. Let's look at a slightly better example:

{% highlight ruby %}
# in app.rb

require 'sinatra'

get '/' do
    erb :index
end


get '/:name' do
    @name = params[:name]
    erb :greet
end
{% endhighlight %}

{% highlight html %}
<!-- in views/greet.erb  -->

<!DOCTYPE html>
<html>
<head>
    <title>hello</title>
</head>
<body>
    <h1>hello <%= @name %></h1>
</body>
</html>
{% endhighlight %}

The important bits are:

* In `app.rb` we assign `params[:name]` to a special type of variable `@name`. The special type of variable is an *instance variable* which **has to begin with a single `@`**.
* We use the instance variable in the `views/greet.erb` inside a special erb tag `<%= ... %>`. The erb templater looks for these tags and interprets the inside as ruby.

{% exercise %}
1. Open `app2/views/greet.erb` and `app2/app.rb` in Sublime Text.
2. Change it so that instead of saying "hello tom" it says "Hello Tom!" in the `h1` (when you visit [localhost:4567/tom](http://localhost:4567/tom), and similarly for other names).
3. Change it so that the page title (in the browser bar) is "Greet Tom" (and similarly for other names).
4. Link twitter bootstrap into your page and add a `div class='container'` just inside the `body` so that things look nicer.
{% endexercise %}