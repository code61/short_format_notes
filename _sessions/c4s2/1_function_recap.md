---
title: Revisiting functions
---

Last time we looked at splitting small bits of program logic out into functions.

{% highlight ruby %}
# Extracts the first name from a full name.
#
#   first_name('Tom Close') #=> 'Tom'
#   first_name('Alan Jones') #=> 'Alan'
#
def first_name(full_name)
  full_name.split.first
end
{% endhighlight %}

This then allowed us to reuse this logic in different places:

{% highlight ruby %}
post '/' do
  @event   = params[:event]
  @swimmer = params[:swimmer]
  @cyclist = params[:cyclist]
  @runner  = params[:runner]

  @event_name = event_name(@event)
  @event_date = event_date(@event)

  @swimmer_first_name   = first_name(@swimmer[:name])
  @swimmer_last_name    = last_name(@swimmer[:name])
  @swimmer_dob          = @swimmer[:dob]

  @cyclist_first_name   = first_name(@cyclist[:name])
  @cyclist_last_name    = last_name(@cyclist[:name])
  @cyclist_dob          = @cyclist[:dob]

  @runner_first_name    = first_name(@runner[:name])
  @runner_last_name     = last_name(@runner[:name])
  @runner_dob           = @runner[:dob]

  erb :tickets
end
{% endhighlight %}

This form still isn't ideal though:

* we have 3 competitors, but are passing around 9 different variables. If the `tickets` template were to become more complicated, things will only get worse.
* we have the `first_name` logic separated out, but the functions are separate from the data that they act on. We have to keep track of both these things throughout the program.

Today we're going to be looking at a solution to this problem: we're going to be looking at **classes**, which will let us package up data with the functions that act on them.

This will allow us to change the code so that it looks more like this:

{% highlight ruby %}
post '/' do
  @event   = Event.new(params[:event])
  @swimmer = Person.new(params[:swimmer])
  @cyclist = Person.new(params[:cyclist])
  @runner  = Person.new(params[:runner])

  erb :tickets
end
{% endhighlight %}

we'll then use this in the templates as follows:

{% highlight erb %}
<table class="table">
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>D.O.B</th>
  </tr>
  <tr>
    <td><%= @cyclist.first_name %></td>
    <td><%= @cyclist.last_name %></td>
    <td><%= @cyclist.dob %></td>
  </tr>
</table>
{% endhighlight %}

Instead of passing the `@cyclist` data to various functions, we're calling *methods* on a new `Person` object, that we've created.

{% exercise %}
1. Clone down the sinatra app for the session: [https://github.com/code61/sinatra_c4s2](https://github.com/code61/sinatra_c4s2)
2. Install the gems for the app: `bundle install`.
2. Have a quick look at the commented out section at the bottom of `app.rb` to get an idea of where we're going.
{% endexercise %}