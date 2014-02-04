---
title: Email templates
---

You might have noticed that the `mongo1/example_app` application uses an email template.

{% highlight ruby %}
  Pony.mail( :to => email,
             :subject => "Congratulations, you added a fruit!",
             :body => erb(:email, :layout => false)   )
{% endhighlight %}

The important bit is `erb(:email, :layout => false)`, which tells sinatra to find `views/email.erb` and run it through erb (to replace any `<%= %>` tags). The `:layout => false` tells sintra to skip the normal layout file: we want to send the user the raw text, not an html page! The result is then used as the email's body.

The template looks like this:

    Hello there!

    <%= @name %> is a great fruit!

    Best,

    The FruitApp team

{% exercise %}
1. Add a signup email to your `mongo1/app.rb` signup form from last time: when a user signs up they should be sent a welcome email as well as being sent to the thanks page.
2. (Optional extension) deploy your app to heroku.
{% endexercise %}