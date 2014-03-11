---
title: Mongo with sinatra
---

### Setting up Sinatra to work with Mongoid

To get sinatra to work with Mongoid you will need to do the following things:

1. Add `gem 'mongoid'` to your Gemfile (and `bundle install`).
2. Create a `mongoid.yml` file with your Mongoid settings (see below).
3. Load mongoid and connect to the database

For local development, you will also need to **make sure MongoDB is running on your laptop** - type `mongod` at the command line.

##### Mongoid.yml

The mongoid.yml file specifies the options you need to connect to a MongoDB database. The following should work:

{% highlight yaml %}
development:
  sessions:
    default:
      hosts:
        - localhost:27017
      database: london2012
  options:
    raise_not_found_error: false

production:
  sessions:
    default:
      uri: <%= ENV['MONGOHQ_URL'] %>
  options:
    raise_not_found_error: false

{% endhighlight %}

There are two sections, describing different databases to connect to in development and production. You should **change the development database name** from 'london2012' to something suitable for your project. If you fail to do this, your code will still run, but eventually you'll run into problems as data from one project turns up in another.

The production section is set up to use MongoHQ on Heroku (see below). Sinatra can find out which environment it is running in by checking the `settings.environment` variable, which will return `:production` on Heroku and `:development` on your local machine. Mongoid uses this to know which part of the `mongoid.yml` file to look at.

##### Loading libraries and connecting

You also need to load the relevant libraries in `app.rb` and setup a database connection. The following code does this:

{% highlight ruby %}
# in app.rb
require 'sinatra'
require 'mongoid'
require 'json'

# Setup database connection
Mongoid.load!("mongoid.yml")

get '/' do
# etc. etc.
{% endhighlight %}

As well as the 'mongoid' and 'sinatra' libraries, you also need to include 'json', which mongoid uses to store objects in the database.

The `Mongoid.load!` line is the one which uses the sinatra environment to decide which part of `mongoid.yml` to look at.

### Mongoid on Heroku

If you use the `mongoid.yml` from above, you'll be pretty much ready to go on Heroku. The only thing you'll need to do is to add the [MongoHQ Add-on](https://devcenter.heroku.com/articles/mongohq). You can do this by logging into Heroku.

{% exercise %}
1. Modify the application so that the 'oldest' link displays the 20 oldest athletes.
2. Make changes so that the 'youngest' link displays the 20 youngest athletes.
3. Add at least 2 more stats pages of your choosing.
4. (Optional) Return to `sinatra_c3s4`. Set your app up with mongoid, so that when people sign up it stores their names and emails. You will need to:
    * Follow the steps above to add mongoid to the sinatra app.
    * Create a mongoid-enabled `User` class, to store the data.
    * Add a `/list` route for admins to see the list of people who've signed up.
    * Push it to heroku.
    * You can see a working app [here](http://aqueous-earth-3131.herokuapp.com/). If you get stuck, you can find the code [here](https://github.com/code61/mongo1/tree/solution).
{% endexercise %}