---
title: Email templates
---

So far the body of our email has only been a single line. What if we want a proper multi-line email? You can use `erb` templates for this!

{% highlight ruby %}
  Pony.mail( :to => @email,
             :subject => "Congratulations, you added a fruit!",
             :body => erb(:email, :layout => false)   )
{% endhighlight %}

The important bit is `erb(:email, :layout => false)`, which tells sinatra to find `views/email.erb` and run it through erb (to replace any `<%= %>` tags). The `:layout => false` tells sintra to skip the normal layout file: we want to send the user the raw text, not an html page! The result is then used as the email's body.

The template will look something like this:

    Hello there!

    <%= @name %> is a great fruit!

    Best,

    The FruitApp team

{% exercise %}
1. Add the required line of code in the `post '/'` block, to send a welcome email to the new user.
2. Modify `views/email.erb` so that it (at least) contains the name of the person who just signed up.
2. (Optional extension) deploy your app to heroku. You will need to add the (free version) of the [sendgrid addon](https://addons.heroku.com/sendgrid) to allow you to send emails.
4. (Alternative extension) Clone down the project [https://github.com/code61/mailmerge](https://github.com/code61/mailmerge) and have a play!
{% endexercise %}