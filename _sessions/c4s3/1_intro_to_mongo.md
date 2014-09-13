---
title: About MongoDB
---


In this session we will be using a database - a specialised piece of software for storing and retrieving data. Databases become important when you have large amounts of data, which you want to be able to access quickly and which you want to keep consistent.

In the session we will be using two different, but related, pieces of software:

* [MongoDB](http://www.mongodb.org/) the database.
* [Mongoid](http://mongoid.org/) a ruby library that we will use to interface with MongoDB.

MongoDB is one of many different databases that we could have chosen. We went with MongoDB because it is fairly straight-forward to configure and quick to get going with. It is also fairly popular in the web community at the moment.

MongoDB is a *NOSQL*, or *document-based*, database. In the past, the more traditional style *SQL*, or *relational*, databases were used in most applications. NOSQL databases have risen in popularity in the last year or two, in part due to their ability to offer increased performance in certain common scenarios, by allowing developers to bend the rigid SQL database structures. We will go into this in slightly more depth later in the course. For the time being, with data we're storing in the next few sessions it won't make much difference whether our db is SQL or NOSQL.

### Using Mongoid

Mongoid is a ruby library that allows you to interface with MongoDB. The idea is very simple - you can think of Mongoid as mapping **classes** in your application to **tables** in the database. Take a look at the following example:

{% highlight ruby %}
class Athlete
  include Mongoid::Document

  field :name,    type: String
  field :country, type: String
  field :age,     type: Integer
  field :height,  type: Integer
  field :weight,  type: Integer
  field :sex,     type: String
  field :dob,     type: Time
  field :gold,    type: Integer
  field :silver,  type: Integer
  field :bronze,  type: Integer
  field :sport,   type: Integer
  field :events,  type: Array

  def total_medals
    gold + silver + bronze
  end
end
{% endhighlight %}

This is fairly similar to the classes we looked at last week - we have data and methods that act on the data. The two different parts are:

* `include Mongoid::Document`: this activates this class as a mongoid-enabled class.
* The `field :name, type: String` etc.: these setup the getting and setting methods that we had to do by hand last week, and tell mongoid what sort of object it is, which is useful for storage purposes.

You can use this class like this:
{% highlight ruby %}
a = Athlete.new
a.name    = "Michael Phelps"
a.country = "US"
a.sport   = "Swimming"
a.gold    = 2
a.silver  = 2
a.bronze  = 0

a.name         #=> "Michael Phelps"
a.total_medals #=> 4
{% endhighlight %}

This is not that exciting - we could have done all this last week. It gets more interesting when we start using some of the extra methods that Mongoid has added to the `Athlete` class:

{% highlight ruby %}
# Let's save Michael in the database
a.save    #=> true

# How many athletes do we have?
Athlete.count  #=> 1

# Let's pull Michael out again
a = Athlete.first #=> #<Athlete _id: 5315dec6de9c928a02001c9c, name: "Michael Phelps", country: "US", gold: 2, silver: 2, bronze: 0, sport: "Swimming">

# or
a = Athlete.find_by(:name => "Michael Phelps") #=> #<Athlete _id: 5315dec6de9c928a02001c9c, name: "Michael Phelps", country: "US", gold: 2, silver: 2, bronze: 0, sport: "Swimming">

{% endhighlight %}


### Starting MongoDB

In order to use MongoDB in a ruby project, it first needs to be running on your computer. The command for this is

    $ mongod

You will need to keep this command line open and continue the instructions in a new one.

By default mongo will run on [localhost:28017](http://localhost:28017/). If you visit that link in your browser you should see a mongo stats page.

{% exercise %}
1. Start MongoDB running on your laptop.
1. Clone down the code for the session: [https://github.com/code61/sinatra_c4s3](https://github.com/code61/sinatra_c4s3)
2. Run `bundle install` to get the required gems.
3. Open up `irb`.
4. Type `require './utils'` (this loads in the `Athlete` class and sets up your MongoDB connection).
5. Try the following
{% highlight ruby %}
a = Athlete.new
a.name    = "Michael Phelps"
a.country = "US"
a.sport   = "Swimming"
a.gold    = 2
a.silver  = 2
a.bronze  = 0

a.name
a.country

a.save

Athlete.count
b = Athlete.first

b.name
b.name = "Tom Close"

a.name     # has this updated?

b.save
a.name     # has it updated now?

a.reload
a.name

# different way of creating an athlete, using a hash
c = Athlete.new(:name   => "Chad Le Clos", :country => "South Africa", 
                :sport  => "Swimming",     :gold    => 1,
                :silver => 1,              :bronze  => 0 )
c.save

d = Athlete.find_by(:name => "Chad Le Clos")
{% endhighlight %}
{% endexercise %}
