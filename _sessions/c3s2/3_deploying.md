---
title: App deployment
---

We're now going to look at how to get the Sinatra app online, a process known as *deployment*. We're going to deploy the app to [Heroku](heroku.com), which offers easy hosting for a variety of web frameworks - all you need to do is push up a git repository, and they take care of everything else!

You should have set up a heroku account and uploaded your ssh keys for homework.

### Preparation

There are a few files `sinatra_c3s2` that we need if we're going to deploy the app to heroku:

* config.ru
* Gemfile

`config.ru` contains the lines

{% highlight ruby %}
require './app.rb'
run Sinatra::Application
{% endhighlight %}

These lines are to tell Heroku which file to find your application (`app.rb`) and how to run it (using Sinatra).

The `Gemfile` is a way of specifying which gems your project uses. Heroku needs to know this so it knows which libraries it needs to run your app. The `Gemfile` is also really helpful way of remembering yourself which gems you need and is invaluable when working with others.

{% highlight ruby %}
# Gemfile

source 'https://rubygems.org'

gem 'sinatra'
{% endhighlight %}

Along with rubygems, ruby has a tool called bundler. Bundler helps you manage your ruby gems. If you run `bundle install` it will look in the `Gemfile` and install any gems that you don't already have.

    $ bundle install

 will also create a `Gemfile.lock` which specifies the exact version of the gems (e.g. the sinatra library) that you are using. This means that heroku (and anyone else you're collaborating with using git) now knows exactly which gems you are using and can pick to use the same versions. You need to check this in to your repository:

    $ git add --all
    $ git commit -m "Added Gemfile.lock"

### Deploying to Heroku

Once your app is prepared, the first thing you need to do is create a new empty heroku application. To do this you use the `heroku create` command:

    $ heroku create
    Creating arcane-gorge-2129... done, stack is cedar
    http://arcane-gorge-2129.herokuapp.com/ | git@heroku.com:arcane-gorge-2129.git
    Git remote heroku added

You'll see that it created an app for you. In my case the app is called `arcane-gorge-2129` and can be found at http://arcane-gorge-2129.herokuapp.com. It also added a git remote for you. 

    $ git remote -v
    heroku  git@heroku.com:arcane-gorge-2129.git (fetch)
    heroku  git@heroku.com:arcane-gorge-2129.git (push)
    origin  git@github.com:code61/sinatra_project_1.git (fetch)
    origin  git@github.com:code61/sinatra_project_1.git (push)

<!-- Put a bit about git remotes here -->

### Deploying

You deploy your repository by pushing to this remote. Heroku will serve whatever is in the `master` branch. Here we push the `master` branch up to the `heroku` remote:

    $ git push heroku master
    Counting objects: 11, done.
    Delta compression using up to 2 threads.
    Compressing objects: 100% (6/6), done.
    Writing objects: 100% (11/11), 1.08 KiB, done.
    Total 11 (delta 1), reused 0 (delta 0)

    -----> Ruby/Rack app detected
    -----> Using Ruby version: ruby-1.9.3
    -----> Installing dependencies using Bundler version 1.3.2
           Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin --deployment
           Fetching gem metadata from https://rubygems.org/..........
           Fetching gem metadata from https://rubygems.org/..
           Installing rack (1.5.2)
           Installing rack-protection (1.5.0)
           Installing tilt (1.4.1)
           Installing sinatra (1.4.3)
           Using bundler (1.3.2)
           Your bundle is complete! It was installed into ./vendor/bundle
           Cleaning up the bundler cache.
    -----> Discovering process types
           Procfile declares types     -> (none)
           Default types for Ruby/Rack -> console, rake, web

    -----> Compiled slug size: 25.0MB
    -----> Launching... done, v3
           http://arcane-gorge-2129.herokuapp.com deployed to Heroku

    To git@heroku.com:arcane-gorge-2129.git
     * [new branch]      master -> master

After you push, heroku automatically updates the app and launches it for you. You can now see the app by visiting the url (in this case http://arcane-gorge-2129.herokuapp.com).

{% exercise %}
Deploy your `sinatra_c3s2` app to Heroku:

1. Install your bundle to get a `Gemfile.lock`. In your `sintara_c3s2` directory run:

        $ bundle install

2. Add your work (and new `Gemfile.lock`) to your repository:

        $ git add --all
        $ git commit -m 'Added Gemfile.lock'

3. Create a new heroku app:

        $ heroku create

4. Push your work to Heroku

        $ git push heroku master

    (for subsequent updates you should be ok with just `git push heroku`).
5. Visit the url that heroku provide, to check that your app is running!
{% endexercise %}