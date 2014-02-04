---
title: Lists of data
---

So far we have only inserted single values and words into an already existing `erb` template. We will now look at using ruby to generate more of the template dynamically.

Suppose you have a ruby array that you want to turn into an html list:

{%highlight ruby%}
# in app.rb

get '/fruit' do
  @fruits = ["Bananas", "Apples", "Raspberries"]
  erb :fruits_view
end
{% endhighlight %}

We can do this by using the `@fruits` array's `each` method to iterate over the elements and put them into the page one-by-one.

{% highlight html %}
<!-- in views/fruits_view.erb -->
<ul>
  <% @fruits.each do |fruit| %>
    <li><%= fruit %></li>
  <% end %>
</ul>
{% endhighlight %}

You might notice that we've used a different type of erb tag for the `do ... end` block: `<% %>` instead of `<%= %>`. This is really important:

* You need to use `<%= %>` if you want the result of executing that line of ruby to be added to the page.
* You need to use `<% %>` if you don't want the result of executing that line of ruby to be added to the page.

Here, the bits we want adding are the elements of the array, so only they have the `<%= %>` tags. The code will cause the following html to be generated:

{% highlight html %}
<ul>
  <li>Bananas</li>
  <li>Apples</li>
  <li>Raspberries</li>
</ul>
{% endhighlight %}

You can also use the same technique to generate tables and other html (lists of divs etc.).

{% exercise %}
1. **Fork, then clone** the code for this exercise [https://github.com/code61/sinatra_c3s3](https://github.com/code61/sinatra_c3s3).
2. Add the code to the body of `todo.erb`, so that the `@todos` display as an ordered list.
3. Add, commit and push your code to Github.
3. Add the code to the body of `schedule.erb`, so that the items in the `@schedule` display as rows in a table. Note that `@schedule` is an *array of arrays* - you'll need to iterate over the first array, and within the loop use the normal ways of accessing elements of an array pull out the items.
3. Add, commit and push your code to Github.
4. Take a look at the `get '/rsvps'` block. Try the `CSV.read` bit in irb, to see what it does. Have a go at writing the code to categorise rsvps into acceptances/rejections and count them.
5. Update the `rsvps.erb` view, so that the right information is displayed.
3. Add, commit and push your code to Github.
{% endexercise %}