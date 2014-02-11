---
title: Configuration variables
---

The purpose of this next part is to add an email notification to the sign-up form you worked on last time.

### Problem: where to store the password

In the example email script you were prompted for your gmail username and password. This meant we side-stepped the issue of where to write this (sensitive) information down.

The problem of where in your program to store sensitive, application-specific configuration data is one that you will come across often. For example, you may want to store:

* An email username/password for your app.
* Database configuration, username and passwords.
* Amazon webservices api tokens and secret key (e.g. Amazon S3 etc.).
* Facebook integration token and key.
* GitHub integration token and key.
* ... tokens and keys to connect to many other services.

Quite often these keys will have different values in different *environments*: you probably won't want to use your live production database when developing or testing. 

A tempting (but non-ideal) place to put this information is in the code in your git repository (i.e. just write them into the source code files). This is bad for a few reasons including:

1. Anyone with access to your git repository has access to your email password etc.
2. It's hard to manage different versions for different environment - you will need to remember to replace your development info with your production info everytime before you do a 'git push heroku'.

In general **it is bad practice to put passwords/tokens/keys in your git repo**.

### Using ENV variables

A good solution for this situation is to use environment variables. All ruby programs have access to an `ENV` hash containing options from the environment where the program is run. You can see the environment variables set on your computer by running

    $ env
    TERM_PROGRAM=Apple_Terminal
    SHELL=/bin/bash
    TERM=xterm-256color
    ...

You can then check that you can access these in irb:

{% highlight ruby %}
> ENV['SHELL']
#=> "/bin/bash"
{% endhighlight %}

We are going to store the configuration values (e.g. email username and password) as environment variables for our program. Heroku makes it easy for you to manage ENV variables on their servers, as described [here](https://devcenter.heroku.com/articles/config-vars). To replicate the situation on your laptop you can use a gem called `foreman`.

You can install `foreman` via rubygems. If you use `rbenv` (i.e. if you followed 'The Hard Way' installation instructions) you will then need to do a `rbenv rehash`. (This is because the foreman gem comes with a command line tool, which we need to tell rbenv about.)

    gem install foreman
    rbenv rehash

Foreman manages your app processes for you. It becomes more useful when you might have several services that you need to remember to start for you application e.g. a Mongo database, a web server, a queue manager etc. We will be using it mainly to set environment variables.

To run your app with foreman you need to create a `Procfile` with the command you usually use to start your app (e.g. `ruby app.rb`):

{% highlight ruby %}
# in Procfile
app:  ruby app.rb
{% endhighlight %}

To start your app you then run

    $ foreman start

(instead of the usual `ruby app.rb`). To set the environment variables you use a `.env` file:

{% highlight ruby %}
# in .env
GMAIL_USER_NAME=yourgmailusername
GMAIL_PASSWORD=password12345
{% endhighlight %}

You can then access these variables in your ruby program by the `ENV` hash:

{% highlight ruby %}
user_name = ENV['GMAIL_USER_NAME']
password = ENV['GMAIL_PASSWORD']
{% endhighlight %}

In order to keep your `.env` configuration secret you need to make sure it doesn't get added to the git repo. If you want to deploy to Heroku, it is also important that your `Procfile` **isn't** in your git repo  (otherwise it will mess with Heroku's settings when it gets up there). To do this you need to make sure both of them are in your `.gitignore`:

{% highlight ruby %}
# in .gitignore
Procfile
.env
{% endhighlight %}

{% exercise %}
1. Fetch down the changes to `mongo1`. In the `mongo1` directory:

        $ git fetch

2. Checkout the `email` branch:

        $ git checkout email

    This has the solution from last time along with some email examples. If you spent a lot of time making your solution from last session look nice, you might instead want to merge the `email` branch into your `master` - up to you!
3. Do a `bundle install` (and a `rbenv rehash` if necessary):

        $ bundle install
        $ rbenv rehash

3. Copy the contents of `mongo1/example_app/Procfile.sample` and `mongo1/example_app/.env.sample` and save them as `mongo1/example_app/Procfile` and `mongo1/example_app/.env` filling in your gmail details in `.env`.
4. Start the app with `foreman start`. Check that the app sends you a fruity email.
{% endexercise %}


### ENV variables on heroku

As the settings in `.env` aren't in the git repo, they won't be pushed to heroku. You will need to set these variables separately. Heroku makes it easy to do this. Assuming your app is already on heroku you can set environment variables as:

        $ heroku config:set GMAIL_USER_NAME=yourgmailusername
        $ heroku config:set GMAIL_PASSWORD=password12345

You can check the values you have set by running

        $ heroku config

There are other tools you can use to manage heroku configuration variables, which might be useful if you end up setting a lot of options. See [here](https://github.com/ddollar/heroku-config) for more details.