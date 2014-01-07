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
    "hello #{params[:name]}"
end
{% endhighlight %}

The `/:name` is a URL matcher. It will match `/` followed by any word, for example `/tom`, `/gertrude` or `/this_isnt_a_name`. The value that is matched is made available in a hash called params as `params[:name]`.

{% exercise %}
1. Open `app1/app.rb` in Sublime text.
2. Change it so that visiting [localhost:4567/tom](http://localhost:4567/tom) shows "Hello Tom!" in the browser (and similarly for other names).
3. See if you can make it so that [localhost:4567/tom/bye](http://localhost:4567/tom/bye) shows "Goodbye Tom" in the browser (and similarly for other names).
4. Change the code by adding a `raise` right before `end` to:

        get '/:name' do
            # keep the stuff you've written here
            # ...

            # add a raise just before the end
            raise
        end

    What happens? 
{% endexercise %}