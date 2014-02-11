---
title: Using MongoDB
---

So far in ruby we have met several different types of object e.g. `String`, `FixNum`, `Array` and `Hash`. To interact with the database we will define our own type of object using a `class`:

{% highlight ruby %}
class User
    include Mongoid::Document

    field :name
    field :email
end
{% endhighlight %}

This class defines an object that will be saved to the database. A `User` will have two properties: `name` and `email` set up using the `field` command. The line `include Mongoid::Document` is the bit that tells ruby how to save the object.

{% exercise %}
1. Open `mongo1/db_examples.rb` in Sublime text.
2. With a partner, work through the examples in the file, copying and pasting into `irb`.
{% endexercise %}


### Creating a new user

{% highlight ruby %}
# create a new user object
u = User.new(:name => "Tom", :email => "tom@example.com")

# get the properties
u.name #=> "Tom"
u.email #=> "tom@example.com"

# change the name
u.name = "Tom Close"

# save to the database
u.save #=> true
{% endhighlight %}

### Getting users from the database

{% highlight ruby %}
# count the number of users
User.count

# find the first user
User.first

# find the user with name Tom Close
User.find_by(:name => "Tom Close")

# pull all users out of the database ...
users = User.all
#=> #<Mongoid::Criteria
#  selector: {}
#  options:  {}
#  class:    User
#  embedded: false>

# ... and print their names
users.each {|u| puts u.name}
{% endhighlight %}