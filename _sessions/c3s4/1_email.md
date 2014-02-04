---
title: Sending email
---

Today we'll be looking at sending email from a ruby program. To do this we'll be using a library called [Pony](https://github.com/benprew/pony). Pony is a light-weight, simple library (in comparison more fully fledged options like [ActionMailer](http://guides.rubyonrails.org/action_mailer_basics.html)). After a small amount of configuration, it allows you to send emails with a single function call.

We'll be using a google account to send the email - you will need to input your username and password, and it will look like the email came from your gmail account. Using gmail is a good solution for a small test app like this. When you get bigger you will start hitting gmails sending limits, and you will want to investigate other solutions e.g. [sendgrid](http://sendgrid.com/) or [mandrill](http://mandrill.com/). For further options see the [heroku addons page](https://addons.heroku.com/).

Before sending an email we need to set up some configuration. We do this by setting the `Pony.options` hash:

{% highlight ruby %}
Pony.options = {
  :via => 'smtp',
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'yourusername',
    :password             => 'yourpassword',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
  }
}
{% endhighlight %}

To send the email is then very simple:

{% highlight ruby %}
Pony.mail(:to => 'example@example.com', :subject => "Wow - an email", :body=>"Hi. This is your program speaking. Bye.")
{% endhighlight %}

You can find out more about the different options you can use on the [pony github page](https://github.com/benprew/pony).

{% exercise %}
1. If you don't already have one create a [Gmail account](https://mail.google.com/mail/).
2. Clone the example email code:

        $ git clone https://github.com/code61/email1.git

3. Install the pony gem

        $ cd email1
        $ bundle install

4. Check you understand how the configuration is working in the example (it isn't exactly like the example above).
5. Run the program, follow the instructions and check that you receive the email:

        $ ruby email.rb

{% endexercise %}