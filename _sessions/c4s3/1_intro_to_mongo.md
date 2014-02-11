---
title: About MongoDB
---

{% exercise %}
Clone the code for this session:

        $ git clone https://github.com/code61/mongo1.git

{% endexercise %}

In this session we will be using a database - a specialised piece of software for storing and retrieving data. Databases become important when you have large amounts of data, which you want to be able to access quickly and which you want to keep consistent.

In the session we will be using two different, but related, pieces of software:

* [MongoDB](http://www.mongodb.org/) the database.
* [Mongoid](http://mongoid.org/) a ruby library that we will use to interface with MongoDB.

MongoDB is one of many different databases that we could have chosen. We went with MongoDB because it is fairly straight-forward to configure and quick to get going with. It is also fairly popular in the web community at the moment.

MongoDB is a *NOSQL*, or *document-based*, database. In the past, the more traditional style *SQL*, or *relational*, databases were used in most applications. NOSQL databases have risen in popularity in the last year or two, in part due to their ability to offer increased performance in certain common scenarios, by allowing developers to bend the rigid SQL database structures. We will go into this in slightly more depth later in the course. For the time being, with data we're storing in the next few sessions it won't make much difference whether our db is SQL or NOSQL.


### Starting MongoDB

In order to use MongoDB in a ruby project, it first needs to be running on your computer. The command for this is

    $ mongod

You will need to keep this command line open and continue the instructions in a new one.

By default mongo will run on [localhost:28017](http://localhost:28017/). If you visit that link in your browser you should see a mongo stats page.

### Using it in ruby

To interface with MongoDB from ruby we will be using the [Mongoid](http://mongoid.org/) gem. You should have installed the gem already, but if not,

    $ gem install mongoid

should do the trick.

We then need to set some configuration options in our ruby project. Among other things this tells the project which of the mongodb databases on your computer to use - usually you'd want each project to have its own database. The following configuration options should go in a `mongoid.yml` file:

{% highlight yaml %}
development:
  sessions:
    default:
      hosts:
        - localhost:27017
      database: mongo_examples
  options:
    raise_not_found_error: false
{% endhighlight %}

You then need to include the following code in your `app.rb` (or similar) file:

{% highlight ruby %}
require 'mongoid'
require 'json'

Mongoid.load!("mongoid.yml", :development)
{% endhighlight %}

We've seen the `require` statements before - they just tell ruby that we'd like to use the `mongoid` library (and also `json`). The line `Mongoid.load!("mongoid.yml", :development)` tells `mongoid` where to find the configuration options. The `:development` bit refers to our environment - you will probably want to have different configuration options when you're deploying your app to heroku; mongoid allows this by specifying `:production` and `:development` environments.

