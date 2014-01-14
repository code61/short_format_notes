---
title: Basic app
---

### Taking parameters from the url

Take a look at the following code:

{% highlight ruby %}
# in app.rb:

require 'sinatra'

get '/' do
    "hello"
end

get '/:name' do
    name = params[:name]
    name
end
{% endhighlight %}

The `/:name` is a URL matcher. It will match `/` followed by any word, for example `/tom`, `/gertrude` or `/this_isnt_a_name`. Sinatra will make this value available in something called the 'params hash'. You don't need to worry about this at the moment. The first line of the block, pulls the value out of the params hash and sets it to the local variable `name`.

{% exercise %}
1. Open `app.rb` in Sublime text and uncomment the code at the bottom.
2. Change it so that visiting [localhost:4567/tom](http://localhost:4567/tom) shows "Hello Tom!" in the browser (and similarly for other names). [You will need to use string interpolation and a string method.]
3. (Extension.) Check your result by running `ruby test2.rb` in the console.
3. See if you can make it so that [localhost:4567/tom/bye](http://localhost:4567/tom/bye) shows "Goodbye Tom" in the browser (and similarly for other names).
4. (Extension - hard.) See if you can write another test in `test2.rb` to test your result.
{% endexercise %}


