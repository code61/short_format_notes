---
title: Improving code
---

This session we're going to be looking at ways to improve the code you write. In particular, we're going to see how to use *functions* to begin to separate out program logic into reusable chunks.

### Why do we need functions?

Take a look at this bit of code taken from a sinatra app:

{% highlight ruby %}
@swimmer_first_name   = @swimmer[:name].split.first
@swimmer_last_name    = @swimmer[:name].split.last
@swimmer_dob          = @swimmer[:dob]

@cyclist_first_name   = @cyclist[:name].split.first
@cyclist_last_name    = @cyclist[:name].split.last
@cyclist_dob          = @cyclist[:dob]

@runner_first_name    = @runner[:name].split.first
@runner_last_name     = @runner[:name].split.last
@runner_dob           = @runner[:dob]
{% endhighlight %}

This code contains a lot of repetition. Some of the repetition might be unavoidable: we might really need to set up all those different instance variables to share with a view. Other bits aren't and will cause us problems in the long run.

The duplication of the logic for extracting the first and last name is particularly problematic:

* If we wanted to change the way a last name was extracted from a name (e.g to take into account names like 'Pierre de Fermat') we'd have to make changes in three places.
* The code is also cluttered and harder to make sense of than it needs to be: each time you read `.split.first` your brain has to convert that into 'find the first name'. As a programmer you will spend more time reading code than writing it, so these considerations are important.

A nicer way to write this code would be to use `first_name` and `last_name` functions, that contain the logic for splitting up the name:

{% highlight ruby %}
@swimmer_first_name   = first_name(@swimmer[:name])
@swimmer_last_name    = last_name(@swimmer[:name])
@swimmer_dob          = @swimmer[:dob]

@cyclist_first_name   = first_name(@cyclist[:name])
@cyclist_last_name    = last_name(@cyclist[:name])
@cyclist_dob          = @cyclist[:dob]

@runner_first_name    = first_name(@runner[:name])
@runner_last_name     = last_name(@runner[:name])
@runner_dob           = @runner[:dob]
{% endhighlight %}

{% exercise %}
1. Clone down the sinatra app for this session: [https://github.com/code61/sinatra_c4s1](https://github.com/code61/sinatra_c4s1).
2. Install the required libraries: `cd sinatra_c4s1` and then `bundle install`.
2. Familiarise yourself with the app, by looking through the code and running the app from the command line (`ruby app.rb`).
3. See if you can identify other places where logic could be cleaned up.
{% endexercise %}