---
title: Searching and sorting
---

One thing that databases are good at is searching for records. Mongoid allows you to search for records in various different ways: 

{% highlight ruby %}
Athlete.find_by(:name => "Michael Phelps")

Athlete.find_by(:gold => 2)   # returns the first one it finds

Athlete.where(:gold => 2)     # returns a 'collection' with all of them

# you can do lots of things with collections e.g. counting
Athlete.where(:gold => 2).count
# or iterating
Athlete.where(:gold => 2).each do |a|
  puts a.name
end
# or summing
Athlete.where(:gold => 2).sum(:age)
# or turn it into an array
Athlete.where(:gold => 2).to_a

# searching on multiple things at once
Athlete.where(:gold => 2, :bronze => 3)
# or
Athlete.where(:gold => 2).where(:bronze => 0)

# searching on conditions
Athlete.where(:gold.gte => 2)

{% endhighlight %}

You can find further examples in the [Mongoid docs](http://mongoid.org/en/mongoid/docs/querying.html#queries).

### Sorting

You can also get the database to return things to you sorted:

{% highlight ruby %}

# these both return collections
Athlete.order_by(:age.asc)
Athlete.order_by(:age.desc)

# you can then do things like
# .. take the first 1
Athlete.order_by(:age.asc).first

# .. or the first 10
Athlete.order_by(:age.asc).limit(10).to_a

{% endhighlight %}


{% exercise %}
1. Open `irb` and do `require './utils'`.
2. Call the function `load_athletes`. This loads in all the athletes from London 2012.
3. Answer the following questions:
    1. How many athletes were there?
    2. How many women? How many men?
    3. Who was the oldest athlete?
    4. Who was the youngest?
    4. How many people won at least 1 gold?
    5. What was the average age? (Your answer should have decimal places..)
    6. Who got the most golds?
    7. Who was the 10th oldest athlete?
{% endexercise %}