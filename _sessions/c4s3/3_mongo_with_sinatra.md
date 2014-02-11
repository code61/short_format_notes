---
title: Mongo with sinatra
---

{% highlight ruby %}
require 'sinatra'
require 'mongoid'
require 'json'

## Mongoid setup
## =============

Mongoid.load!("mongoid.yml", :development)

class Fruit
  include Mongoid::Document

  field :name
end
{% endhighlight %}


{% highlight ruby %}

get '/' do
  @fruits = Fruit.all
  erb :index
end
{% endhighlight   %}

{% highlight html %}
<ul>
  <% @fruits.each do |f| %>
    <li><%= f.name %></li>
  <% end %>
</ul>
{% endhighlight %}



{% highlight html %}
<h3>Add a new fruit</h3>

<form method='post'>
  <label>Name of fruit</label>
  <input type='text' name='fruit_name'>
</form>
{% endhighlight %}

{% highlight ruby %}
post '/' do
  name = params[:fruit_name]
  f = Fruit.new(:name => name)
  f.save
  @fruites = Fruit.all
  erb :index
end
{% endhighlight %}


{% exercise %}
1. Have a look at the `example_app` in `mongo1`.
2. Have a look in the (mostly empty) `mongo1/app.rb`.
3. Have a look at the [finished app](http://aqueous-earth-3131.herokuapp.com/).
4. Try and make your app work like that.
{% endexercise %}